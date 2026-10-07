---
title: "Particles and VFX"
domain: godot
tags: [particles, vfx, gpu, feedback]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/2d/particle_systems_2d.html
  - https://docs.godotengine.org/en/stable/tutorials/3d/particles/index.html
source_type: official
source_priority: P1
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: high
token_budget: 800
status: stable
---

# Princípios
VFX comunica evento, direção, magnitude e timing antes de decorar.

# Camadas úteis
- anticipation;
- impacto;
- partículas rápidas;
- partículas lentas/resíduo;
- luz/flash breve quando apropriado;
- dissipação.

# Padrões
- lifetime curto para feedback de combate;
- variação controlada;
- telegraph sempre mais legível que ruído;
- medir overdraw/GPU.

# Anti-patterns
- tudo com mesma velocidade;
- efeito maior que o evento;
- partículas escondendo hitbox/ameaça;
- glow usado como única forma de destaque.
