---
title: "Save Integrity"
domain: qa
tags: [save, persistence, migration]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/io/saving_games.html
source_type: official-plus-derived
source_priority: P0-D
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: high
token_budget: 550
status: stable
---

# Casos
novo save; load normal; save antigo; dados faltando; valores inválidos; escrita interrompida; novo jogo; múltiplos slots quando existirem.

# Verifique
versão do formato, progresso, inventário, flags, identidade de entidades e defaults.

# Severidade
Perda ou corrupção de progresso persistente é defeito de alta prioridade.

# Anti-pattern
Testar apenas save criado na mesma versão do jogo.
