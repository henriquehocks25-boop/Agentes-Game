---
title: "Cost vs Quality Evals"
domain: codex
tags: [evals, tokens, quality, regression]
source_urls:
  - https://openai.com/index/harness-engineering/
source_type: official-plus-derived
source_priority: P0-D
last_verified: 2026-10-07
confidence: high
token_budget: 650
status: stable
---

# Métricas
- tarefa concluída corretamente;
- regressões introduzidas;
- número de correções;
- tokens/contexto de entrada quando disponível;
- arquivos lidos;
- módulos KB lidos;
- comandos/tool calls;
- tamanho e foco do diff;
- testes executados;
- tempo/etapas até solução.

# Método
Compare versões do router/KB sobre o mesmo conjunto de tarefas. Não otimize tokens isoladamente: uma solução barata que exige retrabalho pode custar mais no total.

# Gates
Falha técnica ou regressão crítica invalida ganho de custo.

# Benchmark mínimo
- bug localizado;
- feature pequena;
- refactor arquitetural;
- investigação de performance;
- tarefa que exige consulta a um módulo específico.
