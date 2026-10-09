extends RefCounted

const SIZE := 24
const HALF_WIDTH := 32.0
const HALF_HEIGHT := 16.0

static func project(v: Vector2) -> Vector2:
    return Vector2((v.x - v.y) * HALF_WIDTH, (v.x + v.y) * HALF_HEIGHT)

static func unproject(p: Vector2) -> Vector2:
    return Vector2(p.x / (HALF_WIDTH * 2.0) + p.y / (HALF_HEIGHT * 2.0), p.y / (HALF_HEIGHT * 2.0) - p.x / (HALF_WIDTH * 2.0))

func is_walkable(v: Vector2) -> bool:
    return v.x >= 1.0 and v.y >= 1.0 and v.x < float(SIZE - 1) and v.y < float(SIZE - 1)

func draw_ground(c: CanvasItem) -> void:
    for y in range(SIZE):
        for x in range(SIZE):
            var p := project(Vector2(x, y))
            var noise := (x * 23 + y * 31 + x * y * 7) % 13
            var col := Color("#263b34")
            if noise < 3:
                col = Color("#30483a")
            elif noise > 9:
                col = Color("#20332f")
            var diamond := PackedVector2Array([p + Vector2(0, -16), p + Vector2(32, 0), p + Vector2(0, 16), p + Vector2(-32, 0)])
            c.draw_colored_polygon(diamond, col)
            if (x * 13 + y * 17) % 5 == 0:
                c.draw_rect(Rect2(p + Vector2(-4, -3), Vector2(3, 2)), Color("#597052"))
                c.draw_rect(Rect2(p + Vector2(5, 2), Vector2(2, 2)), Color("#152924"))
            if (x * 17 + y * 3) % 11 == 0:
                c.draw_rect(Rect2(p + Vector2(3, -2), Vector2(4, 2)), Color("#82785b"))
