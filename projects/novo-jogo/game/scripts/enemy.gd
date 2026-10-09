extends RefCounted

var pos: Vector2
var hp := 9.0
var alive := true
var state := "idle"
var timer := 0.0
var alert := false
var anim_clock := 0.0
var hit_flash := 0.0
var attack_cd := 0.0

func _init(at: Vector2) -> void:
    pos = at

func tick(dt: float, player_pos: Vector2, world: RefCounted) -> bool:
    if not alive:
        return false
    anim_clock += dt
    hit_flash = maxf(0.0, hit_flash - dt)
    attack_cd = maxf(0.0, attack_cd - dt)
    var gap := pos.distance_to(player_pos)
    if gap < 6.0:
        alert = true
    elif gap > 10.0:
        alert = false
    if state == "windup":
        timer -= dt
        if timer <= 0.0:
            state = "attack"
            timer = 0.16
            attack_cd = 1.35
            return pos.distance_to(player_pos) < 1.45
        return false
    if state == "attack":
        timer -= dt
        if timer <= 0.0:
            state = "idle"
        return false
    if not alert:
        state = "idle"
        return false
    if gap < 1.4 and attack_cd <= 0.0:
        state = "windup"
        timer = 0.48
        return false
    if gap > 1.1:
        state = "walk"
        var proposed := pos.move_toward(player_pos, dt * 1.45)
        if world.is_walkable(proposed):
            pos = proposed
    else:
        state = "idle"
    return false

func hit(amount: float) -> bool:
    if not alive:
        return false
    hp -= amount
    hit_flash = 0.25
    if hp <= 0.0:
        alive = false
        state = "death"
        return true
    state = "hurt"
    return false
