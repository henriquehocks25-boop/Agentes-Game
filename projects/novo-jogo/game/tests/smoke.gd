extends SceneTree

# Rodar com: godot --headless --path . --script res://tests/smoke.gd
const Items = preload("res://scripts/items.gd")
const Player = preload("res://scripts/player.gd")
const Enemy = preload("res://scripts/enemy.gd")
const World = preload("res://scripts/iso_world.gd")

var failures := 0

func _check(valid: bool, label: String) -> void:
    if valid:
        print("PASS: " + label)
    else:
        failures += 1
        push_error("FAIL: " + label)

func _initialize() -> void:
    var p = Player.new()
    var w = World.new()
    _check(p.equipped == "crude_sword", "inicia com arma basica")
    _check(Items.WEAPONS["spear"]["reach"] > Items.WEAPONS["axe"]["reach"], "alcance varia por arma")
    _check(Items.WEAPONS["axe"]["cooldown"] > Items.WEAPONS["sword"]["cooldown"], "velocidade varia por arma")
    _check(not Items.can_pay(p.bag, Items.RECIPES["sword"]), "craft requer recursos")
    p.bag["ore"] = 4
    p.bag["wood"] = 4
    _check(Items.can_pay(p.bag, Items.RECIPES["sword"]), "craft disponivel com recursos")
    Items.pay(p.bag, Items.RECIPES["sword"])
    _check(p.bag["ore"] == 1 and p.bag["wood"] == 2, "craft debita custos")
    _check(p.grant_xp(12) and p.level == 2, "progressao de nivel")
    _check(w.is_walkable(Vector2(8, 8)), "mundo possui zona exploravel")
    w.blockers.append(Vector2(8, 8))
    _check(not w.is_walkable(Vector2(8, 8)), "colisao bloqueia posicao")
    _check(not w.is_walkable(Vector2(-1, -1)), "limites do mapa")
    var beast = Enemy.new(Vector2(10.0, 10.0))
    _check(not beast.hit(2.0) and beast.hp == 7.0, "criatura recebe dano")
    _check(beast.hit(8.0) and not beast.alive, "criatura morre")
    _check(p.try_attack(Items.WEAPONS["crude_sword"]), "ataque inicial disponivel")
    _check(not p.try_attack(Items.WEAPONS["crude_sword"]), "cooldown impede spam")
    p.update_timers(1.0)
    _check(p.try_attack(Items.WEAPONS["crude_sword"]), "ataque recarrega")
    p.owned["shield"] = true
    p.defending = true
    var damage := p.take_damage(3.0)
    _check(damage < 3.0, "escudo reduz dano")
    _check(failures == 0, "resultado smoke")
    print("SMOKE TEST: PASS" if failures == 0 else "SMOKE TEST: FAIL (%d)" % failures)
    quit(0 if failures == 0 else 1)
