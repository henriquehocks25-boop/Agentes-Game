---
title: "Skills"
domain: codex
tags: [skills, workflows, prompting]
source_urls:
  - https://developers.openai.com/blog/rethinking-skills-and-prompts-for-gpt-6-astra
source_type: official
source_priority: P0
last_verified: 2026-10-07
confidence: high
token_budget: 550
status: stable
---

# Princípios
Skills são úteis para workflows específicos, especialmente quando agrupam instruções, recursos e scripts. A descrição deve permitir que o agente decida quando carregá-la.

# Padrões
- uma skill = um workflow reconhecível;
- descrição curta com gatilhos claros;
- detalhes dentro da skill, não no AGENTS global;
- revisar skills antigas quando modelos/capacidades mudam;
- incluir ferramentas/scripts quando tornam o workflow determinístico.

# Anti-patterns
- skill "boas práticas gerais";
- muitas skills sobrepostas;
- descrição que promete tudo;
- instruções redundantes com o router.
