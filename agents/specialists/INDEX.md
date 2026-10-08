# Specialist Registry — Producer → Independent Reviewer

Especialistas são **papéis operacionais** ativados sob demanda, não processos autônomos sempre ligados. Codex pode executar em sequência quando subagentes não estiverem disponíveis. `$forja-especialista` seleciona produtor; `$forja-revisor` seleciona revisor **com critério e evidência separados**.

| Domínio | Produtor | Revisor independente | Playbook |
| --- | --- | --- | --- |
| Game design | design_systems | design_reviewer | game_design_level_design |
| Level/world design | level_world_designer | level_reviewer | game_design_level_design |
| Gameplay/Godot | gameplay_engineer | code_reviewer | gameplay_architecture |
| Game AI | ai_engineer | ai_reviewer | game_ai |
| Personagens/ambientes 2D/3D | character_environment_artist | visual_reviewer | art_2d_3d |
| Technical art/procedural | technical_artist | shader_reviewer + visual_reviewer | technical_art_shaders |
| Shaders/render | shader_engineer | shader_reviewer | technical_art_shaders |
| Animação | animator | animation_reviewer | animation_vfx_lighting |
| VFX/iluminação | vfx_lighting_artist | vfx_reviewer | animation_vfx_lighting |
| Áudio | audio_designer | audio_reviewer | audio_music |
| UI/UX/acessibilidade/input PC | ui_ux_accessibility | ux_reviewer | ui_ux_accessibility_pc |
| Performance | performance_engineer | performance_reviewer | performance_engineering |
| QA/playtest | qa_playtest | Guardião (triage) | qa_playtest_polish |
| Polish integrador | polish_integrator | Guardião + visual/UX/audio reviewers | qa_playtest_polish |
| Build/release | release_engineer | release_reviewer | pc_release_steam |

Todos os caminhos são `agents/specialists/<nome>.md`. O Diretor coordena critérios, Construtor mantém integração, Artista mantém direção, Guardião mantém triage. Não acione toda a tabela para cada tarefa.

## Protocolo
1. `FORJA_PROJECT.md` + `FORJA_STATE.md` + 1–3 módulos específicos.
2. Escolher UM owner de produção e UM reviewer diferente.
3. Provar uma entrega real; anexar evidência conforme `knowledge/production/evidence_protocol.md`.
4. Reviewer verifica diff, runtime e contrato; falha retorna ao owner com causa concreta.
5. Guardião faz regressão transversal; Estúdio decide gate de milestone.
6. Se ferramenta/capacidade não existir, `BLOCKED` com alternativa, nunca evidência inventada.

## Limites
Esses contratos não instalam ferramentas de arte/áudio nem habilitam recursos de subagentes. Não prometem que um modelo domine 26 especialidades sem validação. O objetivo é tornar responsabilidade, evidência e escalonamento verificáveis.
