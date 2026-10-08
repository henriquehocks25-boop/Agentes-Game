# Skills operacionais da Forja

Papéis repo-local diretamente invocáveis pelo Codex.

## Invocação
- `$forja-batedor` — pesquisa orientada a decisão.
- `$forja-diretor` — conceito, proof slice e escopo.
- `$forja-construtor` — Godot 4.x e implementação.
- `$forja-artista` — direção visual, target-fit e technical art.
- `$forja-guardiao` — QA, acceptance criteria e regressão.
- `$forja-estudio` — orquestra milestones.
- `$forja-especialista` — produtor especializado, escolhido pela tarefa e pelo registry.
- `$forja-revisor` — reviewer independente, evidência e gate por domínio.

## Pipeline longo
`M0 Direção → M1 Proof → M2 Vertical Slice → M3 Content Expansion → M4 Polish/QA`

Projetos longos devem usar `FORJA_STATE.md` e handoffs curtos. Não carregar todos os agentes simultaneamente.

## Exemplos
```text
$forja-batedor Analise esta referência e responda somente o que muda nossa decisão de design.
$forja-diretor Reduza esta ideia a um proof slice testável.
$forja-construtor Implemente o caminho end-to-end deste milestone.
$forja-artista Crie Visual Contract e prove o alvo numa cena antes de expandir.
$forja-guardiao Audite este milestone contra acceptance criteria.
$forja-estudio Conduza por milestones até um vertical slice validado.
```

## Equipe de especialistas (v4)
Use `agents/specialists/INDEX.md` para escolher **UM** produtor e seu revisor; a KB está em `knowledge/production/index.md`. Não há execução automática simultânea de todos os papéis.

Exemplos:
```text
$forja-especialista Atue como technical_artist. Prove UMA árvore procedural e um herói com design de silhueta, integre no Godot, capture em 1x e meça custo.
$forja-revisor Atue como visual_reviewer e shader_reviewer. Reprove qualquer asset que não cumpra o Visual Contract; use evidências reais.
$forja-especialista Atue como audio_designer. Implemente event map, buses e mix testável.
$forja-revisor Atue como code_reviewer. Audite o diff, as APIs e regressões do milestone.
```

## Production Art v3
O `$forja-artista` agora faz autoria de assets (não apenas shaders/polish). Pipeline: contrato visual → escolha de ferramenta → silhuetas/lookdev → 1 personagem e 1 cenário exemplares → render 1x → revisão independente.

Módulos por situação:
- `knowledge/visual/asset_production_pipeline.md`
- `knowledge/visual/character_art_production.md`
- `knowledge/visual/environment_art_production.md`
- `knowledge/visual/ascii_art_production.md`
- `knowledge/visual/visual_validation_lab.md`

Benchmark: `evals/artist_ascii_jrpg.md`.

## Contexto
As skills usam progressive disclosure: agente + índice primeiro, módulos adicionais somente quando necessários.
