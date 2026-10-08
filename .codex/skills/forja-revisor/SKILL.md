---
name: forja-revisor
description: Faça revisão INDEPENDENTE especializada de design, level, código Godot, IA, arte, technical art/shaders, animação, VFX, áudio, UI/UX/acessibilidade, performance ou release, exigindo evidência real e sem aceitar autoavaliação do produtor.
---

# Forja — Reviewer independente

## Seleção
1. Receba domínio, owner, paths/diff, acceptance criteria, evidências e riscos.
2. Leia `agents/specialists/INDEX.md` e escolha `agents/specialists/<reviewer>.md`.
3. Leia `FORJA_PROJECT.md`/`FORJA_STATE.md` e o playbook do domínio; 1–3 módulos, não KB inteira.
4. Não usar a autoavaliação do produtor como prova. Se não houver separação real de execução/contexto, registrar limitação de independência.

## Procedimento
- Verificar compatibilidade com versão Godot, renderer, assets, cenas, dados e estilo do projeto.
- Inspecionar código/artefatos e reproduzir evidência quando possível.
- Checar critérios explícitos; registrar `PASS`, `PASS_WITH_CAVEATS`, `FAIL`, `NOT_RUN` ou `BLOCKED` por dimensão.
- Reportar no máximo 5 problemas mais graves com causa, repro, owner e correção focal.
- Em arte: target-fit, asset-quality, readability 0–4; imagem real 1x e ação. Um JRPG colorido com ciano uniforme/ruído deve falhar mesmo sem erro de engine.
- Em performance: baseline e p95/p99; em release: binário real; em áudio: escuta runtime; em UX: navegação real.
- Passar ao `$forja-guardiao` para regressão transversal quando necessário.

## Proibições
Não inventar testes, não chamar headless de prova visual, não aceitar relatório sem artefato, não reescrever feature durante auditoria, não confundir preferência subjetiva com violação do contrato.
