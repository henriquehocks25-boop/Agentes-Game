# Benchmarks por especialista — execução obrigatória

## Protocolo comum
Mesmo commit/projeto/versão/renderer, cenário e acceptance criteria; baseline BEFORE; trabalho do produtor; revisão independente; smoke/regressão; status PASS/PASS_WITH_CAVEATS/FAIL/NOT_RUN/BLOCKED. Captura/log salvo em path real; não inventar resultados. Medir custo (iterações, módulos lidos, retrabalho) além de qualidade.

| ID | Produtor → revisor | Prova concreta | Gate de aprovação |
| --- | --- | --- | --- |
| GD-01 | design_systems → design_reviewer | loop de 3 min, progressão e economia mínima | decisões distintas + playtest registrado |
| LD-01 | level_world_designer → level_reviewer | mapa 2D com atalho, checkpoint, segredo e 2 encontros | sem softlock, telegraph, pacing avaliado |
| GP-01 | gameplay_engineer → code_reviewer | combate, inventário, save/load versionado | testes de regressão e save antigo |
| AI-01 | ai_engineer → ai_reviewer | 3 estados + percepção/LOS + navegação | stuck/unreachable/100 agents testados |
| ART-01 | character_environment_artist → visual_reviewer | herói + árvore + bioma | 1x sem HUD; target-fit/quality/readability >=3 |
| TA-01 | technical_artist → shader_reviewer + visual_reviewer | asset procedural dirigido por shapes e seed | materiais legíveis, parâmetros e perf |
| SH-01 | shader_engineer → shader_reviewer | SDF + material + variante renderer | compila, captura, fallback e budget |
| AN-01 | animator → animation_reviewer | idle/walk/attack/hit/defeat | poses e hit timing coerentes |
| FX-01 | vfx_lighting_artist → vfx_reviewer | magia com telegraph, impacto e decay | leitura em combate denso + flashes controláveis |
| AU-01 | audio_designer → audio_reviewer | mix com buses e música dinâmica | sem clipping, volume/mute, evento sincronizado |
| UX-01 | ui_ux_accessibility → ux_reviewer | inventário/settings/remap | teclado/mouse/gamepad, resolução e persistência |
| PERF-01 | performance_engineer → performance_reviewer | otimização de 10k objetos/glyphs | p50/p95/p99 antes/depois, visual preservado |
| QA-01 | qa_playtest → Guardião | smoke, save corruption e softlock | repro, severidade, cobertura e caveats |
| POL-01 | polish_integrator → visual/UX/audio reviewers | hit feedback multi-modal | clareza, latência e orçamento preservados |
| REL-01 | release_engineer → release_reviewer | export Windows com save/config | binário fora editor e rollback documentado |

## Falhas automáticas
- Falta de artefato executável; só relatório ou autoelogio.
- Fonte/asset inexistente, caminho inventado, API não verificada.
- Declaração de playtest humano que não aconteceu.
- Medir GPU em headless e chamar benchmark real.
- Reviewer não vê evidência ou é só a mesma autoavaliação.
- Expansão de conteúdo antes do exemplar passar.

## Prioridade
Executar primeiro `evals/technical_art_godot.md` e `evals/artist_ascii_jrpg.md` porque a deficiência observada é visual. Depois GP-01, AI-01, UX-01, PERF-01 e REL-01 conforme o milestone.
