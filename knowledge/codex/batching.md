---
title: "Batching"
domain: codex
tags: [batching, tools, efficiency]
source_urls: []
source_type: inference
source_priority: D
last_verified: 2026-10-07
confidence: medium-high
token_budget: 400
status: stable
---

# Quando usar
Operações independentes e homogêneas: buscas, leituras ou validações que não dependem do resultado anterior.

# Benefício
Reduz ida-e-volta e mantém foco.

# Evitar
- writes concorrentes no mesmo arquivo;
- operações cujo segundo passo depende do primeiro;
- batches grandes que dificultam identificar falha.

# Regra
Batch para independência; sequência para dependência.
