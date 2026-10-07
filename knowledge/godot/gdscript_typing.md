---
title: "GDScript and Static Typing"
domain: godot
tags: [gdscript, typing, style]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/
  - https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/static_typing.html
  - https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_styleguide.html
source_type: official
source_priority: P0
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: high
token_budget: 800
status: stable
---

# Princípios
Tipagem estática opcional melhora detecção antecipada de erros, autocomplete e clareza de contratos.

# Padrões
- tipar APIs públicas e dados ambíguos;
- usar inferência quando o tipo é evidente;
- tipar parâmetros/retornos de sistemas importantes;
- seguir style guide oficial;
- usar `class_name` quando identidade global é útil.

# Anti-patterns
- `Variant` por comodidade em contratos críticos;
- tipagem redundante que reduz legibilidade;
- excesso de `class_name`;
- ignorar warnings relevantes.
