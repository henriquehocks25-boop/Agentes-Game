---
title: "Prompt Caching: API vs Codex"
domain: codex
tags: [prompt-caching, api, context]
source_urls:
  - https://developers.openai.com/api/docs/guides/prompt-caching
source_type: official
source_priority: P0
last_verified: 2026-10-07
confidence: high
token_budget: 400
status: stable
---

# Regra
Prompt caching é um recurso documentado da API OpenAI. Não assuma que o usuário do Codex possui um controle equivalente exposto na interface ou que organizar a KB de determinada forma garante um desconto específico.

# Uso na KB
- separar custo lógico de contexto de mecanismos de cobrança/caching;
- não justificar contexto inchado porque "vai ser cacheado";
- otimizar relevância primeiro.

# Anti-pattern
Apresentar comportamento de caching da API como característica garantida de toda superfície Codex.
