extends RefCounted

# Regras de prototipo: valores sujeitos a playtest.
const WEAPONS = {
    "crude_sword": {"label": "Espada gasta", "damage": 2, "reach": 1.8, "cooldown": 0.65},
    "sword": {"label": "Espada de ferro", "damage": 5, "reach": 1.8, "cooldown": 0.52},
    "axe": {"label": "Machado de guerra", "damage": 7, "reach": 1.6, "cooldown": 0.90},
    "spear": {"label": "Lanca", "damage": 4, "reach": 2.6, "cooldown": 0.70},
    "bow": {"label": "Arco", "damage": 3, "reach": 6.0, "cooldown": 0.82}
}

const RECIPES = {
    "sword": {"wood": 2, "ore": 3},
    "axe": {"wood": 3, "stone": 2, "ore": 2},
    "spear": {"wood": 4, "stone": 2},
    "bow": {"wood": 5, "hide": 1},
    "shield": {"wood": 6, "stone": 2},
    "armor": {"hide": 3, "ore": 2}
}
const RECIPE_ORDER = ["sword", "axe", "spear", "bow", "shield", "armor"]
const LABELS = {
    "wood": "Madeira",
    "stone": "Pedra",
    "ore": "Minerio",
    "hide": "Couro",
    "sword": "Espada",
    "axe": "Machado",
    "spear": "Lanca",
    "bow": "Arco",
    "shield": "Escudo",
    "armor": "Armadura"
}

static func can_pay(bag: Dictionary, cost: Dictionary) -> bool:
    for key in cost:
        if int(bag.get(key, 0)) < int(cost[key]):
            return false
    return true

static func pay(bag: Dictionary, cost: Dictionary) -> void:
    for key in cost:
        bag[key] = int(bag.get(key, 0)) - int(cost[key])

static func cost_text(cost: Dictionary) -> String:
    var segments: Array[String] = []
    for key in cost:
        segments.append("%s %d" % [str(LABELS.get(key, key)), int(cost[key])])
    return ", ".join(segments)
