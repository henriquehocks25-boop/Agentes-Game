---
title: "Version Migration"
domain: godot
tags: [migration, versioning, upgrade]
source_urls:
  - https://docs.godotengine.org/en/stable/about/release_policy.html
  - https://docs.godotengine.org/en/stable/tutorials/migrating/index.html
source_type: official
source_priority: P0
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: high
token_budget: 700
status: stable
---

# Princípios
Godot usa major.minor.patch com compatibilidade ampla, mas minor releases ainda podem trazer quebras específicas. Patch releases focam manutenção/compatibilidade.

# Workflow
1. version control/backup;
2. ler página de upgrade da versão alvo;
3. criar branch;
4. converter;
5. abrir projeto e corrigir warnings/errors;
6. rodar smoke/regression/export;
7. comparar performance e visuais.

# Regra
Não misture upgrade de engine com grande refactor sem necessidade.

# Anti-patterns
- usar docs de outra versão silenciosamente;
- upgrade no meio de bug crítico sem razão;
- assumir zero regressão em minor release.
