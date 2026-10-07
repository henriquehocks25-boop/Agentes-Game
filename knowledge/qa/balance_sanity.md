---
title: "Balance Sanity Checks"
domain: qa
tags: [balance, exploit, progression]
source_urls: []
source_type: inference
source_priority: D
last_verified: 2026-10-07
confidence: medium-high
token_budget: 600
status: stable
---

# Checks
- build dominante óbvia;
- recurso infinito;
- loop de farm exponencial;
- softlock por gasto;
- upgrade inútil;
- progressão impossível;
- boss trivial por interação;
- dificuldade spike sem introdução;
- conteúdo obsoleto cedo demais.

# Método
Procure invariantes e extremos antes de tentar "balance perfeito".

# Saída
Problema → combinação → impacto → repro → hipótese de causa. Evite sugerir número exato sem dados.
