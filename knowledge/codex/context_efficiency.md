---
title: "Context Efficiency"
domain: codex
tags: [context, tokens, retrieval, codex]
source_urls:
  - https://openai.com/index/harness-engineering/
  - https://developers.openai.com/blog/rethinking-skills-and-prompts-for-gpt-6-astra
  - https://openai.com/index/unrolling-the-codex-agent-loop/
source_type: official
source_priority: P0
last_verified: 2026-10-07
confidence: high
token_budget: 900
---

# Quando consultar
Ao planejar tarefas grandes, abrir documentação, investigar bugs ou decidir quanto contexto fornecer ao Codex.

# Princípios
- Contexto é recurso escasso.
- O repositório deve ser o sistema de registro; a conversa não deve carregar toda a memória do projeto.
- `AGENTS.md` deve apontar para fontes profundas, não copiá-las.
- Instrução útil é específica e acionável; excesso de regras reduz sinal.
- Preserve contexto relevante e remova histórico que não afeta a próxima decisão.

# Padrões recomendados
1. Leia o pedido e identifique o sistema afetado.
2. Pesquise nomes de arquivos/símbolos antes de abrir arquivos.
3. Abra apenas os trechos necessários.
4. Consulte o índice do domínio.
5. Carregue 1–3 módulos da KB.
6. Faça diff mínimo.
7. Rode validação focal.
8. Resuma resultado e próximos riscos.

# Anti-patterns
- Ler o repositório inteiro "para entender".
- Colar documentação inteira no prompt.
- Reabrir arquivos inalterados sem necessidade.
- Manter logs enormes no contexto.
- Fazer uma regra global para cada bug histórico.
- Transformar AGENTS.md em manual monolítico.

# Classificação de práticas
- AGENTS.md curto / repo como system of record: oficial OpenAI.
- Progressive disclosure e skills enxutas: oficial OpenAI.
- Search-before-read, limites de stdout e 1–3 módulos: heurística operacional desta KB, coerente com os princípios oficiais.
- Prompt caching configurável: recurso de API; não presumir controle equivalente no fluxo normal do Codex.

# Fontes
Ver front matter.
