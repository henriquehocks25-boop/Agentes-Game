extends Node2D

const World = preload("res://scripts/iso_world.gd")
const Hero = preload("res://scripts/player.gd")
const Beast = preload("res://scripts/enemy.gd")
const Art = preload("res://scripts/pixel_art.gd")
const Items = preload("res://scripts/items.gd")

var world = World.new()
var hero = Hero.new()
var enemies: Array = []
var nodes: Array = []
var buildings: Array = []
var clock := 0.0
var night := false
var nights_survived := 0
var recipe_index := 0
var event_message := "Explore, colete, fabrique e construa."
var message_time := 8.0
var hud: Label
var title: Label

func _ready() -> void:
    _configure_input()
    _seed_resources()
    enemies.append(Beast.new(Vector2(14.0, 10.0)))
    enemies.append(Beast.new(Vector2(16.0, 15.0)))
    enemies.append(Beast.new(Vector2(6.0, 16.0)))
    var overlay := CanvasLayer.new()
    add_child(overlay)
    var panel := ColorRect.new()
    panel.color = Color(0.06, 0.085, 0.09, 0.83)
    panel.position = Vector2(12, 12)
    panel.size = Vector2(440, 304)
    overlay.add_child(panel)
    hud = Label.new()
    hud.position = Vector2(23, 18)
    hud.add_theme_font_size_override("font_size", 16)
    hud.add_theme_color_override("font_color", Color("#f2e7cd"))
    overlay.add_child(hud)
    title = Label.new()
    title.position = Vector2(16, 661)
    title.add_theme_font_size_override("font_size", 17)
    title.add_theme_color_override("font_color", Color("#f4cf8f"))
    overlay.add_child(title)
    _refresh_hud()

func _bind_key(action: String, key: Key) -> void:
    if not InputMap.has_action(action):
        InputMap.add_action(action)
    var event := InputEventKey.new()
    event.physical_keycode = key
    InputMap.action_add_event(action, event)

func _configure_input() -> void:
    _bind_key("left", KEY_A)
    _bind_key("right", KEY_D)
    _bind_key("up", KEY_W)
    _bind_key("down", KEY_S)
    _bind_key("run", KEY_SHIFT)
    _bind_key("gather", KEY_E)
    _bind_key("attack", KEY_J)
    _bind_key("block", KEY_K)
    _bind_key("dodge", KEY_SPACE)
    _bind_key("craft", KEY_C)
    _bind_key("recipe", KEY_TAB)
    _bind_key("build_fire", KEY_B)
    _bind_key("build_shelter", KEY_V)
    _bind_key("perk_collector", KEY_7)
    _bind_key("perk_resistant", KEY_8)
    _bind_key("restart", KEY_F5)
    _bind_key("upgrade", KEY_R)
    for i in range(1, 5):
        _bind_key("equip_%d" % i, [KEY_1, KEY_2, KEY_3, KEY_4][i - 1])
    var left_click := InputEventMouseButton.new()
    left_click.button_index = MOUSE_BUTTON_LEFT
    InputMap.action_add_event("attack", left_click)
    var right_click := InputEventMouseButton.new()
    right_click.button_index = MOUSE_BUTTON_RIGHT
    InputMap.action_add_event("block", right_click)

func _seed_resources() -> void:
    for coords in [
        Vector2(9, 8), Vector2(10, 7), Vector2(12, 6), Vector2(6, 6),
        Vector2(5, 12), Vector2(12, 13), Vector2(18, 8), Vector2(18, 18),
        Vector2(4, 18), Vector2(15, 3), Vector2(20, 9), Vector2(11, 19),
        Vector2(3, 4), Vector2(21, 16), Vector2(8, 17), Vector2(20, 20)
    ]:
        nodes.append({"kind": "wood", "pos": coords, "left": 4})
        world.blockers.append(coords)
    for coords in [
        Vector2(8, 10), Vector2(11, 9), Vector2(13, 15), Vector2(5, 9),
        Vector2(16, 7), Vector2(20, 13), Vector2(7, 19), Vector2(16, 20)
    ]:
        nodes.append({"kind": "stone", "pos": coords, "left": 4})
        world.blockers.append(coords)
    for coords in [Vector2(12, 10), Vector2(6, 13), Vector2(17, 12), Vector2(19, 5)]:
        nodes.append({"kind": "ore", "pos": coords, "left": 3})
        world.blockers.append(coords)

func _process(delta: float) -> void:
    var dt := minf(delta, 0.05)
    message_time = maxf(0.0, message_time - dt)
    hero.update_timers(dt)
    if hero.dead:
        hero.motion = "death"
        _refresh_hud()
        queue_redraw()
        return
    _move_hero(dt)
    hero.defending = Input.is_action_pressed("block") and bool(hero.owned.get("shield", false)) and hero.stamina > 5.0
    _tick_survival(dt)
    for enemy in enemies:
        if enemy.alive and enemy.tick(dt, hero.pos, world):
            var taken := hero.take_damage(3.0)
            if taken > 0:
                _note("Criatura atingiu voce: -%.1f HP" % taken)
    _refresh_hud()
    queue_redraw()

func _move_hero(dt: float) -> void:
    var input_vec := Input.get_vector("left", "right", "up", "down")
    var grid_dir := Vector2(input_vec.x * 0.71 + input_vec.y * 1.42, -input_vec.x * 0.71 + input_vec.y * 1.42)
    if grid_dir.length_squared() < 0.001:
        hero.motion = "idle"
        return
    var running := Input.is_action_pressed("run") and hero.stamina > 1.0
    var speed := 3.2
    if running:
        speed = 4.9
        hero.stamina = maxf(0.0, hero.stamina - dt * 18.0)
    var motion := grid_dir.normalized() * speed * dt
    var candidate := hero.pos + motion
    if world.is_walkable(candidate):
        hero.pos = candidate
    else:
        var x_only := hero.pos + Vector2(motion.x, 0)
        var y_only := hero.pos + Vector2(0, motion.y)
        if world.is_walkable(x_only):
            hero.pos = x_only
        elif world.is_walkable(y_only):
            hero.pos = y_only
    hero.facing = grid_dir.normalized()
    hero.motion = "run" if running else "walk"

func _tick_survival(dt: float) -> void:
    var was_night := night
    clock += dt
    night = fmod(clock, 115.0) >= 72.0
    if was_night and not night:
        nights_survived += 1
        _note("Primeira noite superada! Continue explorando." if nights_survived == 1 else "Mais uma noite superada.")
    var warm := false
    for s in buildings:
        if s["kind"] == "fire":
            s["fuel"] = maxf(0.0, float(s["fuel"]) - dt)
            if float(s["fuel"]) > 0.0 and hero.pos.distance_to(s["pos"]) <= 3.0:
                warm = true
        elif hero.pos.distance_to(s["pos"]) <= 2.0:
            warm = true
    if night and not warm:
        var cold_rate := 1.45 if hero.perk == "resistant" else 2.7
        hero.cold = minf(100.0, hero.cold + dt * cold_rate)
    else:
        hero.cold = maxf(0.0, hero.cold - dt * 9.0)
    if hero.cold >= 100.0:
        hero.take_damage(2.0)

func _unhandled_input(event: InputEvent) -> void:
    if event.is_action_pressed("restart"):
        get_tree().reload_current_scene()
        return
    if hero.dead:
        return
    if event.is_action_pressed("gather"):
        _gather_or_refuel()
    elif event.is_action_pressed("attack"):
        if event is InputEventMouseButton:
            _face_mouse()
        _attack()
    elif event.is_action_pressed("dodge"):
        if not hero.try_dodge(hero.facing, world):
            _note("Esquiva indisponivel: folego ou caminho bloqueado.")
    elif event.is_action_pressed("build_fire"):
        _build("fire")
    elif event.is_action_pressed("build_shelter"):
        _build("shelter")
    elif event.is_action_pressed("recipe"):
        recipe_index = (recipe_index + 1) % Items.RECIPE_ORDER.size()
    elif event.is_action_pressed("craft"):
        _craft()
    elif event.is_action_pressed("upgrade"):
        _upgrade_weapon()
    elif event.is_action_pressed("perk_collector"):
        _set_perk("collector")
    elif event.is_action_pressed("perk_resistant"):
        _set_perk("resistant")
    for i in range(1, 5):
        if event.is_action_pressed("equip_%d" % i):
            _equip(["sword", "axe", "spear", "bow"][i - 1])

func _gather_or_refuel() -> void:
    for s in buildings:
        if s["kind"] == "fire" and hero.pos.distance_to(s["pos"]) < 2.0 and int(hero.bag["wood"]) > 0 and float(s["fuel"]) < 50.0:
            hero.bag["wood"] -= 1
            s["fuel"] += 30.0
            _note("Fogueira reabastecida.")
            return
    var selected: Dictionary = {}
    var nearest := 1.85
    for n in nodes:
        var distance := hero.pos.distance_to(n["pos"])
        if int(n["left"]) > 0 and distance < nearest:
            selected = n
            nearest = distance
    if selected.is_empty():
        _note("Aproxime-se de madeira, pedra ou minerio (E).")
        return
    var kind: String = selected["kind"]
    var amount := hero.gather_yield(kind)
    hero.bag[kind] = int(hero.bag[kind]) + amount
    selected["left"] = int(selected["left"]) - 1
    if int(selected["left"]) <= 0:
        world.blockers.erase(selected["pos"])
    if hero.grant_xp(2) and hero.perk == "":
        _note("Nivel %d! Escolha um talento: 7 Coletor / 8 Resistente." % hero.level)
    else:
        _note("+%d %s" % [amount, str(Items.LABELS[kind])])

func _face_mouse() -> void:
    var camera_origin := Vector2(650, 385) - World.project(hero.pos)
    var mouse_world := World.unproject(get_viewport().get_mouse_position() - camera_origin)
    var aim := mouse_world - hero.pos
    if aim.length_squared() > 0.15:
        hero.facing = aim.normalized()

func _attack() -> void:
    var stats: Dictionary = Items.WEAPONS[hero.equipped]
    if not hero.try_attack(stats):
        return
    var selected = null
    var closest := float(stats["reach"])
    for enemy in enemies:
        if not enemy.alive:
            continue
        var between: Vector2 = enemy.pos - hero.pos
        var dist := between.length()
        if dist <= closest and dist > 0.01 and hero.facing.dot(between.normalized()) >= -0.10:
            closest = dist
            selected = enemy
    if selected == null:
        _note("Golpe no vazio.")
        return
    var bonus := 2 if bool(hero.owned.get("upgraded_" + hero.equipped, false)) else 0
    if selected.hit(float(stats["damage"]) + float(bonus)):
        hero.bag["hide"] = int(hero.bag["hide"]) + 1
        hero.bag["ore"] = int(hero.bag["ore"]) + 1
        hero.grant_xp(5)
        _note("Criatura derrotada! +1 couro, +1 minerio, +5 XP.")
    else:
        _note("Acerto: %s de dano." % str(stats["damage"]))

func _can_place(at: Vector2) -> bool:
    if not world.is_walkable(at):
        return false
    if hero.pos.distance_to(at) < 0.6:
        return false
    for n in nodes:
        if int(n["left"]) > 0 and n["pos"].distance_to(at) < 1.2:
            return false
    for s in buildings:
        if s["pos"].distance_to(at) < 2.1:
            return false
    return true

func _build(kind: String) -> void:
    var cost: Dictionary = {"wood": 5, "stone": 2} if kind == "fire" else {"wood": 12, "stone": 6}
    if not Items.can_pay(hero.bag, cost):
        _note("Falta material: " + Items.cost_text(cost))
        return
    var at := Vector2(roundf(hero.pos.x + hero.facing.x * 2.1), roundf(hero.pos.y + hero.facing.y * 2.1))
    if not _can_place(at):
        _note("Local ocupado. Mova-se ou vire para outra direcao.")
        return
    Items.pay(hero.bag, cost)
    buildings.append({"kind": kind, "pos": at, "fuel": 75.0 if kind == "fire" else 0.0})
    world.blockers.append(at)
    _note("Fogueira construida." if kind == "fire" else "Abrigo construido.")

func _craft() -> void:
    var key: String = Items.RECIPE_ORDER[recipe_index]
    if bool(hero.owned.get(key, false)):
        _note("Voce ja possui " + str(Items.LABELS[key]))
        return
    var cost: Dictionary = Items.RECIPES[key]
    if not Items.can_pay(hero.bag, cost):
        _note("Receita sem material: " + Items.cost_text(cost))
        return
    Items.pay(hero.bag, cost)
    hero.owned[key] = true
    if key != "shield" and key != "armor":
        hero.equipped = key
    _note("Fabricado: " + str(Items.LABELS[key]))

func _upgrade_weapon() -> void:
    if hero.equipped == "crude_sword":
        _note("Fabrique uma arma com C antes de melhorar.")
        return
    if bool(hero.owned.get("upgraded_" + hero.equipped, false)):
        _note("Esta arma ja foi melhorada.")
        return
    var cost: Dictionary = {"ore": 3, "wood": 1}
    if not Items.can_pay(hero.bag, cost):
        _note("Melhoria custa 3 minerios e 1 madeira.")
        return
    Items.pay(hero.bag, cost)
    # Melhoria unica por arma neste prototipo.
    hero.owned["upgraded_" + hero.equipped] = true
    _note("Arma melhorada: bonus de 2 de dano.")

func _equip(key: String) -> void:
    if not bool(hero.owned.get(key, false)):
        _note("Fabrique primeiro: " + str(Items.LABELS[key]))
        return
    hero.equipped = key
    _note("Equipado: " + str(Items.LABELS[key]))

func _set_perk(which: String) -> void:
    if hero.level < 2 or hero.perk != "":
        return
    hero.perk = which
    _note("Talento: Coletor" if which == "collector" else "Talento: Resistente")

func _note(s: String) -> void:
    event_message = s
    message_time = 4.5

func _refresh_hud() -> void:
    var phase := "NOITE" if night else "DIA"
    var keys := Items.RECIPE_ORDER[recipe_index]
    var owned_recipe := " (feito)" if bool(hero.owned.get(keys, false)) else ""
    var perk_line := "7 Coletor / 8 Resistente (escolha)" if hero.level >= 2 and hero.perk == "" else ("Talento: " + (hero.perk if hero.perk != "" else "pendente"))
    var weapon: Dictionary = Items.WEAPONS[hero.equipped]
    var bonus := 2 if bool(hero.owned.get("upgraded_" + hero.equipped, false)) else 0
    hud.text = "RUINAS DO CREPUSCULO | prototipo M1\n"
    hud.text += "HP %.1f/%.0f   Folego %.0f   Frio %.0f%%\n" % [hero.health, hero.max_health, hero.stamina, hero.cold]
    hud.text += "%s | Noites sobrevividas: %d | Nivel %d XP %d/%d\n" % [phase, nights_survived, hero.level, hero.xp, hero.level * 12]
    hud.text += "Madeira %d  Pedra %d  Minerio %d  Couro %d\n" % [hero.bag["wood"], hero.bag["stone"], hero.bag["ore"], hero.bag["hide"]]
    hud.text += "Arma: %s | Dano %d\n" % [weapon["label"], int(weapon["damage"]) + bonus]
    hud.text += "RPG: %s\n" % perk_line
    hud.text += "WASD mover | Shift correr | Espaco esquivar\n"
    hud.text += "J / clique esquerdo atacar | K / clique direito defender\n"
    hud.text += "E coletar/reabastecer | B fogueira | V abrigo\n"
    hud.text += "TAB receita | C fabricar | R melhorar arma\n"
    hud.text += "1 Espada | 2 Machado | 3 Lanca | 4 Arco\n"
    hud.text += "Receita: %s%s [%s]\n" % [Items.LABELS[keys], owned_recipe, Items.cost_text(Items.RECIPES[keys])]
    hud.text += "F5 reiniciar"
    var status := event_message if message_time > 0.0 else "Objetivo: sobreviva, evolua e construa."
    if hero.dead:
        status = "VOCE MORREU — F5 para reiniciar."
    title.text = status

func _draw() -> void:
    var origin := Vector2(650, 385) - World.project(hero.pos)
    draw_set_transform(origin)
    world.draw_ground(self)
    var draws: Array = []
    for n in nodes:
        if int(n["left"]) > 0:
            draws.append({"kind": "resource", "pos": n["pos"], "object": n, "z": World.project(n["pos"]).y})
    for b in buildings:
        draws.append({"kind": "building", "pos": b["pos"], "object": b, "z": World.project(b["pos"]).y})
    for enemy in enemies:
        draws.append({"kind": "enemy", "pos": enemy.pos, "object": enemy, "z": World.project(enemy.pos).y})
    draws.append({"kind": "hero", "pos": hero.pos, "object": hero, "z": World.project(hero.pos).y})
    draws.sort_custom(func(a, b): return a["z"] < b["z"])
    for entry in draws:
        var p: Vector2 = World.project(entry["pos"])
        match entry["kind"]:
            "resource":
                Art.resource(self, p, str(entry["object"]["kind"]), false)
            "building":
                var b: Dictionary = entry["object"]
                Art.structure(self, p, str(b["kind"]), clock, float(b["fuel"]) > 0.0)
            "enemy":
                var e = entry["object"]
                Art.beast(self, p, str(e.state), e.anim_clock, e.hp, e.hit_flash > 0.0)
            "hero":
                var mode := hero.motion
                if hero.dead:
                    mode = "death"
                elif hero.hurt_anim > 0.0:
                    mode = "hurt"
                elif hero.attack_anim > 0.0:
                    mode = "attack"
                Art.human(self, p, mode, hero.anim_clock, hero.equipped, hero.defending)
    if night:
        draw_rect(Rect2(-1200, -1200, 2600, 2700), Color(0.06, 0.08, 0.22, 0.26))
    draw_set_transform(Vector2.ZERO)
