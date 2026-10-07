# Skills operacionais da Forja

Estas skills tornam os cinco papéis do repositório diretamente invocáveis pelo Codex.

## Invocação
- `$forja-batedor` — pesquisa e decompõe jogos/referências.
- `$forja-diretor` — transforma pesquisa/ideia em design executável.
- `$forja-construtor` — implementa e depura Godot 4.x.
- `$forja-artista` — direção visual, UI, VFX, shaders e polish.
- `$forja-guardiao` — QA, regressão, performance e acessibilidade.
- `$forja-estudio` — coordena o pipeline completo.

## Exemplos
```text
$forja-batedor Analise este jogo de referência: <URL>
$forja-diretor Transforme esta pesquisa em um vertical slice original.
$forja-construtor Implemente o vertical slice neste projeto Godot.
$forja-artista Faça uma auditoria visual e refine a cena.
$forja-guardiao Teste o vertical slice e priorize os problemas.
$forja-estudio Pegue esta ideia e conduza o pipeline até um vertical slice validado.
```

## Contexto
As skills usam progressive disclosure. Elas devem abrir primeiro o arquivo do agente e o índice do domínio, então carregar somente os módulos necessários.
