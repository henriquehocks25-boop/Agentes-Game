extends RefCounted

var pos := Vector2(8.0, 8.0)
var facing := Vector2(0.0, 1.0)
var health := 16.0
var max_health := 16.0
var stamina := 100.0
var cold := 0.0
var xp := 0
var level := 1
var perk := ""
var bag: Dictionary = {"wood": 0, "stone": 0, "ore": 0, "hide": 0}
var owned: Dictionary = {"crude_sword": true}
var equipped := "crude_sword"
var attack_cd := 0.0
var attack_anim := 0.0
var dodge_cd := 0.0
var invincible := 0.0
var hurt_anim := 0.0
var dead := false
var defending := false
var motion := "idle"
var anim_clock := 0.0

func update_timers(dt: float) -> void:
    attack_cd = maxf(0.0, attack_cd - dt)
    attack_anim = maxf(0.0, attack_anim - dt)
    dodge_cd = maxf(0.0, dodge_cd - dt)
    invincible = maxf(0.0, invincible - dt)
    hurt_anim = maxf(0.0, hurt_anim - dt)
    stamina = minf(100.0, stamina + dt * 13.0)
    anim_clock += dt

func try_attack(stats: Dictionary) -> bool:
    if dead or attack_cd > 0.0 or defending:
        return false
    attack_cd = float(stats["cooldown"])
    attack_anim = 0.20
    motion = "attack"
    return true

func try_dodge(dt_dir: Vector2, world: RefCounted) -> bool:
    if dead or dodge_cd > 0.0 or stamina < 25.0:
        return false
    var move_dir := dt_dir.normalized()
    if move_dir.length_squared() < 0.01:
        move_dir = facing
    var destination := pos + move_dir * 1.25
    if not world.is_walkable(destination):
        return false
    stamina -= 25.0
    dodge_cd = 0.92
    invincible = 0.38
    pos = destination
    motion = "run"
    return true

func take_damage(amount: float) -> float:
    if dead or invincible > 0.0:
        return 0.0
    var dealt := amount
    if defending and bool(owned.get("shield", false)):
        dealt = maxf(0.5, dealt * 0.28)
        stamina = maxf(0.0, stamina - 12.0)
    if bool(owned.get("armor", false)):
        dealt = maxf(0.5, dealt - 1.0)
    health = maxf(0.0, health - dealt)
    hurt_anim = 0.22
    invincible = 0.55
    if health <= 0.0:
        dead = true
        motion = "death"
    return dealt

func grant_xp(amount: int) -> bool:
    xp += amount
    var needed := 12 * level
    if xp >= needed:
        xp -= needed
        level += 1
        max_health += 2.0
        health = minf(max_health, health + 4.0)
        return true
    return false

func gather_yield(kind: String) -> int:
    if kind == "wood" and perk == "collector":
        return 2
    return 1
