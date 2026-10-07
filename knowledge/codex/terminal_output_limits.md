---
title: "Terminal Output Limits"
domain: codex
tags: [terminal, logs, context, debugging]
source_urls:
  - https://openai.com/index/harness-engineering/
source_type: derived
source_priority: D
last_verified: 2026-10-07
confidence: medium-high
token_budget: 450
status: stable
---

# Quando consultar
Builds, testes, logs e comandos que podem produzir grande stdout/stderr.

# Princípios
Saída de terminal é contexto. Capture o sinal necessário, não milhares de linhas repetidas.

# Padrões
- filtrar por erro/warning relevante;
- usar `head`, `tail`, `rg` ou saída resumida;
- em falha, preservar primeira causa, stack trace útil e comando;
- guardar log completo em arquivo quando necessário, mas carregar só trecho.

# Anti-patterns
- imprimir logs de sucesso repetitivos;
- colar build completo quando o erro está em 20 linhas;
- esconder a causa raiz por resumo agressivo.

# Heurística
Limite por linhas/bytes deve ser escolhido pela tarefa; não há um número universal oficial.
