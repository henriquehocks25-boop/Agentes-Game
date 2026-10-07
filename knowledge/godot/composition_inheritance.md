---
title: "Composition vs Inheritance"
domain: godot
tags: [composition, inheritance, architecture]
source_urls:
  - https://docs.godotengine.org/en/stable/getting_started/introduction/godot_design_philosophy.html
source_type: official-plus-derived
source_priority: P0-D
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: high
token_budget: 650
status: stable
---

# Princípios
Godot favorece composição de cenas/nós. Herança continua útil quando existe relação "é um" estável e comportamento comum real.

# Prefira composição quando
- comportamento pode ser opcional;
- múltiplas combinações são esperadas;
- feature pode ser cena/componente independente.

# Prefira herança quando
- contrato e identidade são compartilhados;
- subclasses especializam uma base pequena e estável.

# Anti-patterns
- árvore de herança profunda;
- classe base com dezenas de flags;
- componente que conhece todos os detalhes do dono.
