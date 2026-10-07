---
title: "GDExtension"
domain: godot
tags: [gdextension, native, extension]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/scripting/gdextension/index.html
source_type: official
source_priority: P2
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: high
token_budget: 650
status: stable
---

# Quando consultar
Integração nativa, bibliotecas externas ou hotspots que realmente precisam de linguagem compilada.

# Princípios
GDExtension estende o engine sem recompilar o Godot inteiro.

# Regra
Prefira GDScript/C# enquanto atendem requisitos. Introduza extensão nativa quando há necessidade técnica comprovada.

# Anti-patterns
Usar C++/Rust para gameplay comum apenas por preferência; aumentar toolchain sem ganho medido.
