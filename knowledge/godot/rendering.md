---
title: "Rendering"
domain: godot
tags: [rendering, 2d, 3d, multimesh, batching, environment]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/rendering/renderers.html
  - https://docs.godotengine.org/en/stable/classes/class_multimesh.html
  - https://docs.godotengine.org/en/stable/tutorials/shaders/shader_reference/canvas_item_shader.html
  - https://docs.godotengine.org/en/stable/tutorials/3d/environment_and_post_processing.html
source_type: official
source_priority: P1
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: high
token_budget: 1050
status: stable
---

# Quando consultar
Renderização 2D/3D, batching, instancing, shaders CanvasItem, ambientes e decisões dependentes do renderer.

# 2D batching / MultiMesh
Para muitos elementos visuais equivalentes com transforms, cores ou dados customizados diferentes, `MultiMesh` pode reduzir draw calls ao agrupar instâncias.

Pontos importantes:
- uma instância não deve virar um Node por elemento quando a contagem é muito alta;
- cores e custom data por instância podem alimentar shaders;
- CanvasItem shaders podem usar `INSTANCE_CUSTOM`;
- cache de meshes/buffers é preferível a reconstrução contínua quando os dados não mudam;
- culling por objeto/batch é diferente de culling individual de cada instância.

Use essa abordagem somente quando a quantidade de elementos e o perfil justificarem a complexidade.

# Renderer
Valide Forward+, Mobile ou Compatibility conforme a plataforma alvo. Recursos e custos diferem.

# 3D / Environment
WorldEnvironment/Environment reúne sky, ambient/reflected light, tonemapping, fog e efeitos.

# Padrões
- medir draw calls e custo real;
- compartilhar atlas/material quando isso reduz state changes;
- preservar dados estáticos em cache;
- valores e iluminação base antes de pós;
- validar no renderer/plataforma alvo.

# Anti-patterns
- um Node por elemento de alta cardinalidade;
- reconstruir buffers idênticos todo frame;
- assumir que baixo draw call significa automaticamente bom frame time;
- habilitar efeito sem checar suporte;
- calibrar em uma única máquina.
