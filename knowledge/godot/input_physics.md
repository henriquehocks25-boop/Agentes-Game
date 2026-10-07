---
title: "Input and Physics"
domain: godot
tags: [input, physics, collision, characterbody]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/inputs/input_examples.html
  - https://docs.godotengine.org/en/stable/tutorials/physics/physics_introduction.html
source_type: official
source_priority: P0
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: high
token_budget: 900
status: stable
---

# Princípios
- use Input Map para ações semânticas;
- eventos discretos e polling contínuo têm usos diferentes;
- movimento físico deve ocorrer no passo de física;
- CharacterBody é controlado pelo código;
- não presuma determinismo do motor de física.

# Padrões
- separar input intent de resolução de movimento;
- layers/masks nomeados por intenção;
- usar APIs de movimento/colisão apropriadas.

# Anti-patterns
- hardcode de teclas espalhado;
- mover body físico alterando position como substituto de resolução física;
- depender de determinismo sem estratégia própria.
