# Skills operacionais da Forja

Papéis repo-local diretamente invocáveis pelo Codex.

## Invocação
- `$forja-batedor` — pesquisa orientada a decisão.
- `$forja-diretor` — conceito, proof slice e escopo.
- `$forja-construtor` — Godot 4.x e implementação.
- `$forja-artista` — direção visual, target-fit e technical art.
- `$forja-guardiao` — QA, acceptance criteria e regressão.
- `$forja-estudio` — orquestra milestones.

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

## Contexto
As skills usam progressive disclosure: agente + índice primeiro, módulos adicionais somente quando necessários.
