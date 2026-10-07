# Agentes-Game

Knowledge Base modular para um **AI Game Studio** operado por agentes Codex, com foco em criação de jogos completos e polidos em Godot.

## Agentes
1. Game Researcher / Reference Analyst
2. Game Director / Designer
3. Godot Lead
4. Visual Director / Technical Artist
5. QA / Reviewer

Fluxo recomendado: `Researcher → Director → Godot Lead ↔ Visual Director → QA`.

Veja `STUDIO_WORKFLOW.md`.

## Como a KB funciona
- `AGENTS.md` é o router global.
- Cada domínio possui um `index.md`.
- O agente carrega somente os módulos necessários.
- Fontes primárias têm prioridade.
- Godot usa documentação **4.x stable** como base.
- Fatos, heurísticas e inferências não devem ser misturados.
- Decisões duráveis ficam no repositório; histórico de conversa não é a memória principal.
- Evals medem qualidade e custo antes de expandir instruções.

## Pastas
- `agents/` — perfis dos cinco agentes.
- `knowledge/codex/` — contexto, tokens, skills, routing e evals.
- `knowledge/godot/` — arquitetura e implementação Godot.
- `knowledge/game_design/` — direção e systems design.
- `knowledge/game_research/` — análise de referências.
- `knowledge/visual/` — art direction, UI, VFX e technical art.
- `knowledge/qa/` — estratégia de QA.
- `sources/` — proveniência, ingestão e atualização.
- `evals/` — benchmarks e scorecards.

## Regra de contexto
Comece com o router e 1–3 módulos relevantes. Expanda somente quando houver uma lacuna concreta.

## Pesquisa
A síntese e as correções da pesquisa-base estão em `sources/RESEARCH_SYNTHESIS_2026-10-07.md`.
