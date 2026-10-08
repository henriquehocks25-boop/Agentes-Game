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

## Implementado na atualização de 2026-10-08
- `knowledge/production/`: router, 12 playbooks especializados, matriz de competências, contrato, evidência, referências e auditoria.
- `agents/specialists/`: 15 contratos de produtores + 12 contratos de revisores + INDEX.
- `.codex/skills/`: `forja-especialista` e `forja-revisor`; roteamento integrado a AGENTS, Estúdio e Artista.
- `templates/`: project truth, checkpoint de estado e review report.
- `evals/`: benchmarks por disciplina, technical art Godot e revisão independente.
- `knowledge/visual/code_generated_asset_lab.md`: exercícios GDScript/shader/ASCII com status **exemplo não executado**.

## Não realizado / próximos passos
- Não foi executado benchmark Godot, não foram gerados assets reais nem testada a arte do JRPG; os resultados permanecem `NOT_RUN`.
- Não houve auditoria exaustiva linha a linha dos módulos antigos, nem validação de todas as URLs de cada playbook.
- Não foram realizados playtests humanos, benchmarks em GPU-alvo ou Steamworks em conta real.
- Relatório externo da Pesquisa Aprofundada não foi importado automaticamente; esta entrega é uma atualização técnica incremental baseada no escopo e nas fontes citadas.
- Próximo passo P0: rodar `evals/artist_ascii_jrpg.md` + `evals/technical_art_godot.md` em projeto isolado e ajustar agentes com base nos resultados.
