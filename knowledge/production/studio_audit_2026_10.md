# Auditoria inicial — Forja de Jogos (2026-10-08)

## Evidência inspecionada
Árvore do repositório em `main`: `agents/` (5 papéis), `.codex/skills/` (6 skills), índices de `knowledge/godot`, `knowledge/game_design`, `knowledge/visual`, `knowledge/codex`, `evals/`, e amostra dos módulos `godot/shaders.md`, `godot/audio.md`, `godot/navigation_ai.md`, `godot/export_deployment.md`, `visual/procedural_art.md`, `visual/asset_production_pipeline.md`, `agents/visual_director.md`, `agents/qa_reviewer.md`. **Não é auditoria linha-a-linha de toda a KB nem teste runtime.**

## Achados verificáveis
1. Cinco papéis abrangentes concentram áreas demais: `godot_lead` cobre programação, IA, perf, áudio e release; `visual_director` cobre 2D/3D, shaders, UI, VFX, animação. Falta revisão especializada formal por disciplina.
2. Módulos como `knowledge/godot/shaders.md` e `audio.md` têm princípios úteis, mas pouca implementação/teste progressivo; leitura não equivale a domínio.
3. Já existem Visual Contract, asset pipeline e benchmark ASCII, mas o benchmark não foi executado e não há prova de que a arte do JRPG foi corrigida.
4. Workflow protege milestones e custo de contexto, mas não detalha cadeia de especialistas/revisores e compatibilidade de interfaces.
5. `AGENTS.md` roteia apenas seis skills e não conhece especialistas profundos.

## Riscos
- "Arte" vira recolor/glow/ruído sem asset production; target-fit errado.
- "Passou testes" confunde headless com render/human playtest.
- "Pesquisa profunda" vira docs amplas sem testes e sem fontes versionadas.
- Múltiplos agentes podem criar interfaces incompatíveis ou repetir trabalho.
- Especialistas demais simultaneamente consomem tokens sem gerar jogo.

## Plano incremental
P0: contrato de projeto, roteador de especialistas, revisores independentes, playbooks e gate de arte.
P1: benchmarks reproduzíveis por domínio, ferramentas de medição e implementação de um exemplar real em Godot.
P2: CI, matrizes de hardware, integração Steamworks, testes de usuário, auditoria de todos os módulos existentes.

## Limite honesto
Esta atualização é de **conhecimento, processos e contratos de agentes**. Não cria assets nem executa Godot; não comprova qualidade profissional do jogo até os benchmarks rodarem.
