# AI Game Studio Workflow

## Fluxo padrão
`Researcher → Director → Godot Lead ↔ Visual Director → QA`

## Fase 1 — Descoberta
Researcher investiga referências e entrega princípios + diferenciação.

## Fase 2 — Direção
Director define pilares, loops, escopo, vertical slice e acceptance criteria.

## Fase 3 — Implementação
Godot Lead constrói o vertical slice e valida tecnicamente.

## Fase 4 — Visual
Visual Director aplica art bible e entra no loop render → critique → refine.

## Fase 5 — Gate
QA executa smoke/regression/risco. BLOCKER/CRITICAL voltam ao agente mais próximo da causa.

## Fase 6 — Conteúdo
Só expandir após vertical slice provar gameplay, pipeline e qualidade alvo.

## Roteamento de problemas
- regra/design → Director;
- código/runtime → Godot Lead;
- apresentação/arte/VFX/UI → Visual Director;
- evidência/ref → Researcher;
- classificação/repro → QA.

## Handoff
Use `knowledge/codex/handoffs.md`. Decisões duráveis vão para o repositório.
