extends RefCounted

# Arte provisoria desenhada em blocos de pixels (sem sprites externos).
# Substituir por sprite sheets autorais apos validacao do gameplay.
static func block(c: CanvasItem, p: Vector2, x: float, y: float, w: float, h: float, color: Color) -> void:
    c.draw_rect(Rect2(p + Vector2(x, y), Vector2(w, h)), color)

static func human(c: CanvasItem, p: Vector2, mode: String, t: float, weapon: String, shield: bool) -> void:
    var dark := Color("#141c1d")
    var skin := Color("#c48b67")
    var skin_light := Color("#e2a37b")
    var cloak := Color("#46605a")
    var cloak_light := Color("#73867b")
    var leather := Color("#6c4637")
    var iron := Color("#a6afb0")
    var boot := Color("#302c2b")
    var stride := 0
    var bob := 0
    if mode == "walk" or mode == "run":
        stride = 3 if sin(t * (16.0 if mode == "run" else 10.0)) > 0.0 else -3
        bob = 1 if sin(t * 19.0) > 0.0 else 0
    if mode == "death":
        block(c, p, -17, -7, 32, 5, Color("#20272a"))
        block(c, p, -14, -10, 22, 7, leather)
        block(c, p, 4, -13, 11, 7, cloak)
        block(c, p, 11, -13, 5, 5, skin)
        return
    block(c, p, -13, -3, 27, 4, Color(0.0, 0.0, 0.0, 0.28))
    block(c, p, -9, -10 + stride, 7, 9, boot)
    block(c, p, 2, -10 - stride, 7, 9, boot)
    block(c, p, -9, -20 - bob, 18, 13, leather)
    block(c, p, -10, -29 - bob, 20, 14, cloak)
    block(c, p, -9, -29 - bob, 4, 10, cloak_light)
    block(c, p, 6, -29 - bob, 3, 9, cloak_light)
    block(c, p, -9, -19 - bob, 18, 3, Color("#b38a54"))
    block(c, p, -2, -21 - bob, 5, 5, iron)
    block(c, p, -7, -40 - bob, 14, 12, dark)
    block(c, p, -6, -38 - bob, 12, 11, skin)
    block(c, p, -7, -41 - bob, 14, 5, Color("#30251f"))
    block(c, p, -4, -34 - bob, 2, 2, dark)
    block(c, p, 3, -34 - bob, 2, 2, dark)
    block(c, p, -5, -37 - bob, 3, 2, skin_light)
    block(c, p, -14, -28 - bob, 6, 13, leather)
    var swing := 0
    if mode == "attack":
        swing = -12
    block(c, p, 9, -29 - bob + swing, 6, 12, leather)
    block(c, p, 10, -19 - bob + swing, 4, 4, skin)
    if shield:
        block(c, p, -17, -28 - bob, 8, 14, Color("#8c6c45"))
        block(c, p, -15, -26 - bob, 4, 10, iron)
    if weapon == "bow":
        block(c, p, 16, -39 - bob + swing, 2, 25, Color("#9d7549"))
        block(c, p, 19, -34 - bob + swing, 1, 17, iron)
    elif weapon == "spear":
        block(c, p, 17, -50 - bob + swing, 3, 34, Color("#99764b"))
        block(c, p, 16, -54 - bob + swing, 5, 8, iron)
    else:
        block(c, p, 16, -33 - bob + swing, 3, 17, Color("#967150"))
        block(c, p, 16, -46 - bob + swing, 3, 17, iron)
        block(c, p, 13, -34 - bob + swing, 10, 3, Color("#cfb47b"))
    if mode == "hurt":
        block(c, p, -9, -38, 19, 5, Color(0.9, 0.25, 0.20, 0.55))

static func beast(c: CanvasItem, p: Vector2, mode: String, t: float, hp: float, flash: bool) -> void:
    if mode == "death":
        block(c, p, -16, -6, 30, 7, Color("#3f4040"))
        block(c, p, -11, -8, 19, 6, Color("#806a57"))
        return
    var bob := 0
    if mode == "walk":
        bob = 2 if sin(t * 15.0) > 0.0 else 0
    var hide := Color("#81735e")
    if flash:
        hide = Color("#cb7064")
    block(c, p, -17, -2, 34, 4, Color(0, 0, 0, 0.28))
    block(c, p, -15, -18 - bob, 7, 16, Color("#383a33"))
    block(c, p, 7, -18 + bob, 7, 16, Color("#383a33"))
    block(c, p, -16, -28 - bob, 32, 16, hide)
    block(c, p, -14, -33 - bob, 28, 9, Color("#a19377"))
    block(c, p, -17, -38 - bob, 9, 9, Color("#403a32"))
    block(c, p, 8, -38 - bob, 9, 9, Color("#403a32"))
    block(c, p, -11, -33 - bob, 22, 7, Color("#af9574"))
    block(c, p, -8, -31 - bob, 4, 3, Color("#d8a568"))
    block(c, p, 5, -31 - bob, 4, 3, Color("#d8a568"))
    block(c, p, -3, -25 - bob, 6, 5, Color("#2b292b"))
    if mode == "windup":
        block(c, p, -19, -43 - bob, 38, 3, Color("#d4aa57"))
    if hp > 0.0 and hp < 9.0:
        block(c, p, -17, -49 - bob, 34, 3, Color("#281e1c"))
        block(c, p, -17, -49 - bob, 34.0 * hp / 9.0, 3, Color("#b44d3c"))

static func resource(c: CanvasItem, p: Vector2, kind: String, depleted: bool) -> void:
    if depleted:
        return
    if kind == "wood":
        block(c, p, -9, -38, 17, 39, Color("#382a21"))
        block(c, p, -5, -35, 7, 33, Color("#7d5c3c"))
        block(c, p, -26, -58, 51, 14, Color("#243c32"))
        block(c, p, -19, -69, 38, 17, Color("#304c37"))
        block(c, p, -11, -75, 25, 15, Color("#415f43"))
        block(c, p, -25, -57, 13, 7, Color("#536848"))
        block(c, p, 7, -65, 11, 7, Color("#6d8060"))
    elif kind == "stone":
        block(c, p, -16, -10, 35, 10, Color("#464e4e"))
        block(c, p, -12, -19, 26, 11, Color("#89908b"))
        block(c, p, -7, -23, 19, 6, Color("#a5a89e"))
        block(c, p, 3, -15, 5, 6, Color("#596666"))
    else:
        block(c, p, -12, -12, 24, 12, Color("#46484a"))
        block(c, p, -7, -18, 14, 12, Color("#68747a"))
        block(c, p, -3, -16, 5, 9, Color("#9cabb2"))
        block(c, p, 4, -11, 3, 7, Color("#a98251"))

static func structure(c: CanvasItem, p: Vector2, kind: String, t: float, lit: bool) -> void:
    if kind == "fire":
        block(c, p, -17, -4, 35, 5, Color("#4e5150"))
        block(c, p, -13, -9, 11, 9, Color("#8f8b76"))
        block(c, p, 6, -9, 11, 9, Color("#8f8b76"))
        block(c, p, -12, -14, 24, 5, Color("#7c5235"))
        if lit:
            var flame := 3 if sin(t * 11.0) > 0.0 else 0
            block(c, p, -7, -28 + flame, 14, 18, Color("#d76130"))
            block(c, p, -4, -24 + flame, 9, 13, Color("#f0a54e"))
            block(c, p, -2, -21 + flame, 4, 9, Color("#f5d681"))
    else:
        block(c, p, -29, -3, 59, 6, Color("#2d271f"))
        block(c, p, -27, -24, 54, 23, Color("#79573a"))
        block(c, p, -18, -16, 11, 15, Color("#302820"))
        block(c, p, -30, -29, 62, 8, Color("#4a3931"))
        block(c, p, -21, -40, 45, 13, Color("#63503b"))
        block(c, p, -11, -45, 25, 8, Color("#7c6247"))
