---
title: "Evidence and Independent Review Protocol"
domain: production
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/editor/command_line_tutorial.html
  - https://docs.godotengine.org/en/stable/tutorials/debug/overview_of_debugging_tools.html
source_type: official-plus-derived
godot_version: "4.x stable; pin per project"
last_verified: 2026-10-08
confidence: medium-high
token_budget: 1100
status: active
---

# Evidência > declaração
Estados permitidos: `PASS`, `PASS_WITH_CAVEATS`, `FAIL`, `NOT_RUN`, `BLOCKED`. Nunca escrever "validado" se apenas planejou ou criou teste.

## Matriz de evidências
| Tipo de tarefa | Evidência mínima | Revisor |
| --- | --- | --- |
| Design | playtest/protótipo, hipóteses, métricas e critérios | design reviewer |
| Level design | mapa, rota, captura/playtest, bloqueios, pacing | level reviewer + QA |
| Gameplay | cena executada, testes do loop, regressão | code reviewer + QA |
| IA | cenários determinísticos, debug de estados, edge cases | AI reviewer + QA |
| Art 2D/3D | source/export, BEFORE/AFTER runtime em 1x, silhueta/valor | visual reviewer |
| Technical art/shader | captura real, controles, renderer, artefatos, perf | shader reviewer |
| Animação/VFX | vídeo ou frames de ação + telegraph/readability | animation/VFX reviewer |
| Áudio | mix audition em jogo, buses, loudness/variação, acessibilidade | audio reviewer |
| UI/UX | navegação teclado/mouse/gamepad, resoluções, fluxos | UX reviewer |
| Performance | baseline + p50/p95/p99 frame-time, CPU/GPU, hardware | performance reviewer |
| Save/Release | export real, smoke binário, migração, rollback | release reviewer + QA |

## Separação de testes
- **Static/parse/import**: não prova jogabilidade.
- **Headless/logic**: não prova render visual, áudio ou input humano.
- **Rendered automation**: prova partes observáveis, não diversão.
- **Human playtest**: exige humano; não simular.
- **Performance**: requer hardware, build, cena, janela de amostragem e distribuição; uma média de FPS não basta.

## Relatório de defeito
`severity / área / reprodução / esperado / observado / evidência / impacto / owner / estado`.
Distinguir bloqueio de milestone explícito de preferência estética subjetiva.

## Revisão independente
O produtor entrega artefatos e logs, NÃO a própria aprovação. O revisor verifica inputs/contrato, abre diffs, reproduz quando viável, checa regressões e dá parecer com caveats. Ausência de captura/execução = `NOT_RUN`.

## Gate de expansão
Não produzir dezenas de mapas/monstros/assets até existir UM exemplo integrado que passa target-fit, gameplay, legibilidade, performance e pipeline.
