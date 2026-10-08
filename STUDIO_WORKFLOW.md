# AI Game Studio Workflow

## Fluxo padrão
`Researcher → Director → Godot Lead ↔ Visual Director → QA`

Não execute o pipeline inteiro como um único bloco de contexto. Cada fase termina com validação + handoff + estado persistido.

## Milestones
### M0 — Direção
Provar que objetivo, pilares, risco central e escopo estão claros.

### M1 — Proof
Um caminho completo mínimo:
- uma interação central;
- um cenário representativo;
- uma apresentação visual representativa;
- validação técnica.

### M2 — Vertical Slice
Experiência curta com qualidade-alvo real. Ainda não é produção em massa.

### M3 — Content Expansion
Só multiplicar mapas, inimigos, habilidades e assets depois de M1/M2 provarem pipeline e qualidade.

### M4 — Polish / QA
BLOCKER/CRITICAL/MAJOR corrigidos e regressão focal.

## Fase 1 — Descoberta
Researcher investiga apenas o necessário para decisões atuais. Pare quando houver saturação suficiente; não pesquise por volume.

## Fase 2 — Direção
Director define pilares, loops, escopo, vertical slice, fora de escopo e acceptance criteria. Deve identificar o **risco central** e um **exemplar representativo** antes de conteúdo.

## Fase 3 — Implementação
Godot Lead constrói primeiro o caminho end-to-end mínimo. Valida antes de adicionar variantes.

## Fase 4 — Visual
Visual Director cria um **Visual Contract** (must-have / must-not), aplica a Art Bible numa cena representativa e só expande após atingir o alvo.

## Handoff formal para a produção visual
Diretor entrega Visual Brief; Construtor entrega asset interface map; Artista entrega assets editáveis + importados, evidências BEFORE/AFTER e avaliação real; Guardião faz revisão independente.

O resultado NÃO vira vertical slice final só porque o jogo roda. Exija target-fit >=3, asset-quality >=3 e readability >=3 quando a arte final fizer parte do milestone. Falha nessa fase manda corrigir ARTE, não multiplicar programação.

## Fase 5 — Gate
QA verifica runtime, regressão e também aderência aos acceptance criteria/Visual Contract.

## Fase 6 — Conteúdo
Só expandir após vertical slice provar gameplay, pipeline, performance e qualidade alvo.

## Roteamento de problemas
- regra/design → Director;
- código/runtime → Godot Lead;
- apresentação/arte/VFX/UI → Visual Director;
- evidência/ref → Researcher;
- classificação/repro → QA.

## Estado
Para tarefas longas, use `knowledge/codex/milestone_execution.md`.
Mantenha `FORJA_STATE.md` curto dentro do projeto quando houver múltiplas fases/sessões.

## Handoff
Use `knowledge/codex/handoffs.md`. Handoff deve conter somente: feito, arquivos, decisões, riscos, próximo passo. Decisões duráveis vão para o repositório.
