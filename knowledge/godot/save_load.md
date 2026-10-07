---
title: "Save and Load"
domain: godot
tags: [save, load, serialization, migration]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/io/saving_games.html
source_type: official
source_priority: P0
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: high
token_budget: 900
status: stable
---

# Princípios
Salve estado necessário, não a SceneTree inteira por conveniência. Formatos precisam considerar compatibilidade futura.

# Padrões
- `save_version`;
- DTO/dicionário serializável separado do Node;
- defaults e validação no load;
- caminho `user://`;
- migração de versões antigas;
- testes de corrupção/parcialidade.

# JSON
Legível e interoperável, mas perde riqueza de tipos. Outras formas de serialização podem preservar tipos; escolha pelo contrato do save.

# Anti-patterns
- usar NodePath frágil como identidade persistente;
- quebrar saves sem migração;
- salvar estado derivável sem necessidade.
