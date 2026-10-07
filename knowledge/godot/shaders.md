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
