---
title: "Memory and Lifetime"
domain: godot
tags: [memory, lifetime, reference, node]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_basics.html
  - https://docs.godotengine.org/en/stable/classes/class_refcounted.html
source_type: official
source_priority: P1
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: high
token_budget: 650
status: stable
---

# Princípios
Nodes e RefCounted têm ciclos de vida diferentes. Liberar Nodes e manter referências válidas exige atenção.

# Padrões
- `queue_free()` para Nodes quando apropriado;
- não manter referências a objetos liberados;
- usar RefCounted para objetos de dados/serviço quando sem SceneTree;
- medir crescimento de memória em sessões longas.

# Anti-patterns
- cache global sem política de descarte;
- Node fora da árvore usado como objeto de dados só por hábito;
- referência circular lógica que mantém recursos vivos indevidamente.
