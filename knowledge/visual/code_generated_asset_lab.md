---
title: "Code-Generated Art Lab — Godot 2D, Shader and Native ASCII"
domain: visual
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/2d/custom_drawing_in_2d.html
  - https://docs.godotengine.org/en/stable/tutorials/shaders/shader_reference/canvas_item_shader.html
  - https://docs.godotengine.org/en/stable/classes/class_fastnoiselite.html
  - https://docs.godotengine.org/en/stable/classes/class_multimesh.html
source_type: official-plus-derived
godot_version: "4.x stable; verify exact project version"
last_verified: 2026-10-08
confidence: medium
token_budget: 2100
status: example-untested
---

# Por que existe
Um Technical Artist precisa saber **construir formas**, não apenas aplicar ruído. O pipeline abaixo transforma briefing em shape grammar → layers → cores/materiais → animação → export/glifos → render e avaliação. É um exercício inicial; NÃO é prova de arte final profissional.

## Exercício A: árvore JRPG autoral por código
Defina top-down 2D, copa irregular de massas agrupadas, tronco com face iluminada, sombra de contato, bordas mais escuras, highlights em clusters, folhas/galhos com variação controlada. Mantenha `seed` fixa para comparar capturas. Código GDScript **ilustrativo, não executado nesta KB**:

```gdscript
@tool
extends Node2D

@export var seed: int = 37:
    set(value):
        seed = value
        queue_redraw()

func _draw() -> void:
    var rng := RandomNumberGenerator.new()
    rng.seed = seed

    # Sombra de contato e tronco (materiais separados).
    draw_circle(Vector2(5, 29), 19.0, Color("#214c44"))
    draw_colored_polygon(PackedVector2Array([
        Vector2(-8, -3), Vector2(8, -3),
        Vector2(11, 30), Vector2(-9, 30)
    ]), Color("#563627"))
    draw_colored_polygon(PackedVector2Array([
        Vector2(-5, 0), Vector2(0, -1),
        Vector2(2, 28), Vector2(-6, 28)
    ]), Color("#ba8050"))

    # Copas por clusters; não randomizar cada pixel independentemente.
    for i in range(12):
        var angle := TAU * float(i) / 12.0
        var radius := 17.0 + rng.randf_range(-3.0, 3.0)
        var center := Vector2(cos(angle) * radius,
            -20.0 + sin(angle) * radius * 0.65)
        var r := rng.randf_range(12.0, 17.0)
        draw_circle(center + Vector2(2, 4), r + 3.0, Color("#174a3d"))
        draw_circle(center, r, Color("#318858"))
        draw_circle(center + Vector2(-3, -4), r * 0.48, Color("#8ed768"))

    # Massa central conecta clusters e reduz aparência de bolinhas soltas.
    draw_circle(Vector2(0, -22), 20.0, Color("#2d8052"))
    draw_circle(Vector2(-6, -28), 11.0, Color("#72c861"))
```

**Diagnóstico obrigatório**: o exemplo acima ainda pode parecer "bolhas". Para atingir arte final, substituir círculos por contornos desenhados/polígonos orgânicos com bordas dirigidas, folhas em agrupamentos coerentes, galhos com perspectiva, highlights seguindo luz e pelo menos 3 espécies estruturalmente diferentes. Avaliar 1x sem HUD antes de continuar.

## Exercício B: máscara SDF de círculo para magia
Aplicar `ShaderMaterial` a um `ColorRect` quadrado com UV 0–1. A linguagem é Godot Shader Language, não GLSL bruto. Código **não validado em runtime aqui**:

```glsl
shader_type canvas_item;

uniform vec4 ring_color : source_color = vec4(0.2, 0.75, 1.0, 1.0);
uniform float radius : hint_range(0.1, 0.45) = 0.3;
uniform float thickness : hint_range(0.005, 0.1) = 0.025;

void fragment() {
    vec2 p = UV * 2.0 - 1.0;
    float d = abs(length(p) - radius * 2.0) - thickness * 2.0;
    float aa = max(fwidth(d), 0.002);
    float coverage = 1.0 - smoothstep(-aa, aa, d);
    COLOR = vec4(ring_color.rgb, ring_color.a * coverage);
}
```

**Limite**: anel é shape primário, NÃO VFX final. Adicionar antecipação/contato/decay, gradientes de material, partículas secundárias, áudio, hit timing e limite de overdraw. Testar aspect ratio e renderer real; quadrado evita distorção inicial.

## Exercício C: converter arte para ASCII nativo
1. Desenhar árvore/personagem primeiro; exportar PNG RGBA offline.
2. Para cada célula, calcular cobertura alpha, luminância, orientação do gradiente e ocupação 3x3.
3. Comparar descritores com atlas de glifos pré-rasterizados; minimizar erro ponderado por material.
4. Preservar cor média **ponderada por alpha** e contraste local, não apenas 5 glifos por luminância.
5. Guardar frame binário com glyph index, RGBA, pivot e duração; renderizar por instancing com atlas.
6. Comparar fonte vs resultado ASCII em 1x, 2x, grayscale e silhueta; reduzir ruído do fundo se personagens somem.
7. Profile p95/p99, glyph count, atlas, draw calls e stalls; não prometer 60 FPS sem teste.

## Gate de qualidade
- Árvore tem tronco, copa e sombra reconhecíveis; herói tem cabelo/roupa/arma/pose.
- Pelo menos três materiais legíveis sem legenda; cores seguem brief.
- Não é um wallpaper de caracteres ou uma coleção de círculos com glow.
- Source, seed, export e parâmetros reproduzíveis.
- Godot runtime screenshot BEFORE/AFTER e uma ação animada.
- Reviewer visual e shader aprovam independentemente.

## Fontes
Godot stable custom drawing, CanvasItem shaders, FastNoiseLite, MultiMesh; `knowledge/production/technical_art_shaders.md` para fundamentos e limites.
