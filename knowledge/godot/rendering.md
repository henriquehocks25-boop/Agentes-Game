---
title: "Rendering, Environment and Post"
domain: godot
tags: [rendering, environment, lighting, fog, post]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/3d/environment_and_post_processing.html
source_type: official
source_priority: P1
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: high
token_budget: 900
status: stable
---

# Princípios
WorldEnvironment/Environment reúne sky, ambient/reflected light, tonemapping, fog e vários efeitos. Recursos disponíveis/custos dependem do renderer.

# Padrões
- valores e iluminação base antes de pós;
- use fog como depth cue, não como máscara de problema;
- valide Forward+/Mobile/Compatibility conforme alvo;
- medir GPU no hardware alvo.

# Anti-patterns
- bloom/glow para substituir iluminação;
- habilitar screen-space effects sem checar suporte;
- pós exagerado comprimindo leitura;
- calibrar somente numa máquina.
