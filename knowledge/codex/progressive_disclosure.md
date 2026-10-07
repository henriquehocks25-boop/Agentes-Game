---
title: "Progressive Disclosure"
domain: codex
tags: [context, retrieval, skills]
source_urls:
  - https://openai.com/index/harness-engineering/
  - https://developers.openai.com/blog/rethinking-skills-and-prompts-for-gpt-6-astra
source_type: official
source_priority: P0
last_verified: 2026-10-07
confidence: high
token_budget: 650
status: stable
---

# Quando consultar
Ao decidir onde colocar instruções e quais módulos carregar numa tarefa.

# Princípios
- Entregue ao agente primeiro o mapa e as regras globais.
- Detalhes específicos ficam em módulos/skills e entram só quando a tarefa exige.
- Instruções antigas acumuladas devem ser revisadas; mais texto não significa melhor desempenho.
- Uma skill é mais útil quando representa um workflow específico e possui descrição curta e discriminativa.

# Padrões recomendados
1. `AGENTS.md` raiz: regras universais + roteamento.
2. `index.md` de domínio: catálogo de módulos.
3. módulo: decisão operacional curta.
4. anexos/exemplos longos: somente quando necessários.

# Anti-patterns
- carregar todos os módulos "por segurança";
- copiar a mesma regra no router, agente e módulo;
- skill com descrição ampla que dispara em quase qualquer tarefa;
- manter instruções obsoletas por medo de removê-las.

# Heurística desta KB
Comece com 1–3 módulos. Se mais de 5 parecerem necessários, reavalie escopo e divida a tarefa.
