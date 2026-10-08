---
title: "Milestone Execution"
domain: codex
tags: [milestones, context, tokens, long-tasks, handoff]
source_urls:
  - https://openai.com/index/harness-engineering/
  - https://openai.com/index/unrolling-the-codex-agent-loop/
source_type: official-plus-derived
source_priority: P0-D
last_verified: 2026-10-07
confidence: high
token_budget: 650
status: stable
---

# Quando consultar
Projetos longos, tarefas multiagente, criação de jogo, migrações grandes ou qualquer tarefa que misture vários domínios.

# Regra
Não trate uma tarefa longa como uma única execução contínua.

Quebre em milestones com:
- objetivo;
- acceptance criteria;
- arquivos/sistemas em foco;
- validação;
- handoff curto.

# Ordem recomendada
1. **Proof** — um caminho completo e mínimo prova o risco central.
2. **Vertical slice** — experiência curta com qualidade-alvo representativa.
3. **Content expansion** — multiplicar apenas pipelines já provados.
4. **Polish/QA** — corrigir riscos e qualidade final.

# Content multiplier gate
Antes de criar muitos mapas, inimigos, habilidades, telas ou assets:
- prove 1 exemplar representativo;
- valide pipeline e custo;
- confirme que qualidade alvo foi atingida;
- só então multiplique.

# Estado
Em projeto longo, mantenha um estado curto no repositório, por exemplo `FORJA_STATE.md`:
- milestone atual;
- concluído;
- critérios restantes;
- arquivos em foco;
- blockers;
- próximo passo.

Atualize no fim de cada fase e antes de compaction/troca de agente.

# Contexto
- não carregar logs/capturas antigas quando caminhos dos arquivos bastam;
- não reabrir módulos já resumidos sem motivo;
- separar fases concluídas do contexto ativo;
- após handoff completo, prefira contexto limpo quando a próxima fase for de outro domínio.

# Stop conditions
Pare a expansão quando:
- proof falha;
- visual alvo não foi demonstrado;
- performance do pipeline é inviável;
- acceptance criteria estão ambíguos;
- contexto está dominado por histórico irrelevante.

# Anti-patterns
- "fazer o jogo inteiro" em uma sessão;
- criar cinco variantes antes de validar a primeira;
- carregar cinco agentes completos simultaneamente;
- usar screenshots repetidas como memória de projeto;
- compaction sem estado persistido.
