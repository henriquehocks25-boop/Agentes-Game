# AGENTS.md — Knowledge Router

Este arquivo é um mapa. Não carregue toda a Knowledge Base.

## Regras universais
- Entenda a tarefa antes de abrir documentação.
- Pesquise por arquivo, símbolo ou termo antes de ler arquivos grandes.
- Leia somente as seções necessárias.
- Comece com 1–3 módulos; se precisar de muitos, reavalie ou divida a tarefa.
- Faça o menor diff correto.
- Limite logs ao trecho útil para diagnóstico.
- Valide mudanças importantes executando/testando.
- Godot: prefira `docs.godotengine.org/en/stable/`.
- Diferencie fonte oficial, evidência profissional, comunidade e inferência.
- Decisões duráveis vão para o repositório.
- Tarefa longa deve ser dividida em milestones; não tente consumir design + código + arte + QA + conteúdo em um único contexto.
- Ao fechar uma fase, registre estado e handoff curto antes de avançar ou compactar contexto.
- Prove um exemplo representativo antes de multiplicar conteúdo.

## Agentes operacionais do Codex
Repo-local skills em `.codex/skills/`:
- `$forja-batedor` — pesquisa e referências.
- `$forja-diretor` — game design e escopo.
- `$forja-construtor` — Godot e implementação.
- `$forja-artista` — direção visual e technical art.
- `$forja-guardiao` — QA e validação.
- `$forja-estudio` — orquestra o pipeline completo.

Use a skill específica quando a tarefa for de um domínio. Use `$forja-estudio` somente quando a tarefa realmente atravessar múltiplos papéis.

## Roteamento da KB
- Codex/contexto/tokens → `knowledge/codex/index.md`
- Godot/arquitetura/GDScript → `knowledge/godot/index.md`
- Game design → `knowledge/game_design/index.md`
- Pesquisa de referências → `knowledge/game_research/index.md`
- Arte/UI/VFX/technical art → `knowledge/visual/index.md`
- QA/performance/accessibility → `knowledge/qa/index.md`

## Documentos principais
- `STUDIO_WORKFLOW.md`
- `REPO_MAP.md`
- `DO_NOT.md`
- `.codex/README.md`

## Proveniência e manutenção
- `sources/SOURCES_INDEX.md`
- `sources/INGESTION_PROTOCOL.md`
- `sources/UPDATE_PROTOCOL.md`
