---
title: "Shaders"
domain: godot
tags: [shader, material, gpu, screen]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/shaders/index.html
  - https://docs.godotengine.org/en/stable/tutorials/shaders/screen-reading_shaders.html
source_type: official
source_priority: P1
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: high
token_budget: 900
status: stable
---

# Princípios
Shader deve cumprir uma intenção visual clara. Screen-reading possui custos/limitações e deve ser usado conscientemente.

# Padrões
- uniforms semânticos e faixa útil;
- material simples antes de uber shader;
- parâmetros expostos para direção de arte;
- validar renderer/plataforma;
- testar em movimento e gameplay.

# Anti-patterns
- ruído animado em todos os materiais;
- shader único com dezenas de features não usadas;
- pós que reduz legibilidade;
- feature unstable sem versão marcada.

## Procedimento técnico (Godot 4.x)
1. Fixar renderer e `shader_type` (`canvas_item`, `spatial`, `particles`); consultar built-ins válidos por estágio.
2. Fazer material mínimo que compila; uniforms tipados, `source_color` para cores quando apropriado, ranges com `hint_range`.
3. Testar UV/aspect, alpha premultiplicado quando aplicável, normal/depth/screen textures e transparência.
4. Compor efeito com máscaras e valores coerentes: SDF para bordas, FBM para detalhe, flow para movimento. Noise não substitui silhueta.
5. Expor parâmetros art-directable (escala, direção, velocidade, paleta, seed quando houver), sem 50 knobs inúteis.
6. Validar no runtime 1x e em movimento, não só no preview de shader.
7. Profile GPU/overdraw e stalls; comparar baseline A/B. Registrar renderer/hardware.
8. Separar código de shader, asset fonte, demo scene, captura e fallback.

## Tópicos avançados
- CanvasItem: textura/UV, `COLOR`, vertex transform, light function, masks e instancing.
- Spatial: normal/roughness/metallic, vertex displacement, iluminação e render modes.
- Screen/depth: sampling e limitações de passes/renderer; não assumir que APIs 3.x funcionam em 4.x.
- Procedural: SDF, Voronoi/Worley, fractais, domain warping, shader graph vs código, bake offline.
- Render architecture: MultiMesh, batching, transparência, shader variants e cache.

## Laboratório e gate
- `knowledge/production/technical_art_shaders.md` — fundamentos, níveis e pipeline.
- `knowledge/visual/code_generated_asset_lab.md` — exercício ilustrativo com GDScript + shader.
- `evals/technical_art_godot.md` — benchmark com evidência real.
A aprovação técnica do shader **não** substitui a aprovação estética por `visual_reviewer`.
