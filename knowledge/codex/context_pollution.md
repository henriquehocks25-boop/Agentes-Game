---
title: "Context Pollution"
domain: codex
tags: [context, noise, instructions]
source_urls:
  - https://openai.com/index/harness-engineering/
  - https://developers.openai.com/blog/rethinking-skills-and-prompts-for-gpt-6-astra
source_type: official
source_priority: P0
last_verified: 2026-10-07
confidence: high
token_budget: 500
status: stable
---

# Sinais de poluição
- regras duplicadas;
- instruções antigas;
- logs irrelevantes;
- docs de outro domínio;
- exemplos que contradizem a versão atual;
- prompts explicando obviedades.

# Correção
remover → consolidar → mover detalhe para módulo → revalidar evals.

# Regra
Quando tudo é importante, nada é priorizado. O router deve ser curto e seletivo.
