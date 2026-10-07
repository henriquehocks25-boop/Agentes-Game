---
title: "Model and Reasoning Selection"
domain: codex
tags: [models, reasoning, evals, usage]
source_urls:
  - https://developers.openai.com/api/docs/guides/model-selection
  - https://help.openai.com/en/articles/20001516-managing-usage-with-gpt-6-astra-in-work-and-codex
source_type: official
source_priority: P0
last_verified: 2026-10-07
confidence: high
token_budget: 650
status: needs_review_on_model_change
---

# Princípios
- escolha modelo/esforço pela dificuldade e custo aceitável;
- esforço maior pode consumir mais e não garante resultado melhor;
- falta de arquivos, contexto ou acesso não é resolvida aumentando reasoning;
- compare opções em tarefas representativas.

# Política desta KB
Não hardcode um modelo único como regra permanente. Consulte a documentação atual e rode evals.

# Heurística
- tarefa repetitiva/focal: opção eficiente;
- implementação complexa: equilíbrio capacidade/custo;
- arquitetura, pesquisa difícil ou crítica visual: capacidade maior quando evals justificarem.

# Anti-pattern
Usar modelo máximo para toda operação mecânica.
