---
title: "Input and Physics"
domain: godot
tags: [input, physics, collision, characterbody, area2d, queries]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/inputs/input_examples.html
  - https://docs.godotengine.org/en/stable/tutorials/physics/physics_introduction.html
  - https://docs.godotengine.org/en/stable/classes/class_area2d.html
  - https://docs.godotengine.org/en/stable/classes/class_physicsdirectspacestate2d.html
source_type: official
source_priority: P0
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: high
token_budget: 1050
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

# Area2D e overlaps no mesmo frame
As listas de `Area2D.get_overlapping_areas()` e `get_overlapping_bodies()` são atualizadas no passo de física, não imediatamente após mover ou rotacionar objetos.

Consequência prática:
- uma hitbox reposicionada e consultada no mesmo frame pode ainda refletir overlaps anteriores;
- isso importa em golpes direcionais, dash, teleporte e formas que mudam de transform rapidamente.

Quando o resultado precisa corresponder à geometria atual imediatamente:
- considere uma query explícita no espaço com `World2D.direct_space_state`;
- `PhysicsDirectSpaceState2D.intersect_shape()` permite consultar uma Shape2D usando parâmetros/transform atuais;
- use signals quando o problema for simplesmente reagir a entrada/saída normal de uma Area2D.

Não transforme direct-space queries em regra universal: use-as quando a semântica exige consulta imediata.

# Anti-patterns
- hardcode de teclas espalhado;
- mover body físico alterando position como substituto de resolução física;
- depender de determinismo sem estratégia própria;
- assumir que overlap de Area2D foi recalculado imediatamente após mudar transform.
