# FORJA_STATE — Checkpoint curto

- Data / branch / projeto: 2026-10-08 / main / projects/novo-jogo/
- Milestone: **M1 — Protótipo escrito; gate ainda NOT_RUN**
- Confirmações do usuário: **RPG + Sobrevivência + Construção; 2D isométrico; combate em tempo real; Pixel Art detalhada, um pouco dark; fantasia medieval, florestas misteriosas, ruínas antigas, vilarejos e criaturas; magia rara e misteriosa ligada a ruínas, artefatos e poderes antigos**
- Estilo artístico: **CONFIRMADO** — Pixel Art detalhada com atmosfera levemente dark; paleta e pixel scale TBD
- Objetivo e acceptance criteria: importar e rodar projeto Godot; validar movimentação, combate/IA, crafting, construção e sobrevivência conforme game/TEST_PLAN.md
- Status: **NOT_RUN** — código e cena publicados, mas Godot CLI indisponível neste ambiente; primeiro import/build e QA local pendentes
- Produtor ativo: Diretor de jogo (documentação de planejamento)
- Revisor independente: **NOT_RUN**
- Feito: especificação de armas, combate, crafting, humano e inimigo confirmada; protótipo Godot 4.7.2 com scripts, cena, HUD, arte placeholder e teste smoke escritos no GitHub; GDD v0.7
- Paths: projects/novo-jogo/game/** (código Godot, README, TEST_PLAN, smoke), GDD.md, RPG_SYSTEMS.md, COMBAT_DESIGN.md, ART_DIRECTION.md, WORLD_DESIGN.md, MAGIC_SYSTEM.md, ROADMAP.md, FORJA_PROJECT.md, FORJA_STATE.md, README.md
- Interfaces/ADRs afetadas: cena game/scenes/main.tscn e scripts gameplay; parâmetros de combate/itens; nome do jogo e Godot 4.7.2 provisórios
- Testes REALMENTE executados: **nenhum runtime Godot**; smoke.gd foi escrito, porém NOT_RUN
- Evidências: commits de código e documentos no GitHub; **não há log Godot nem captura real de gameplay**
- Riscos: banalizar magia rara por excesso de efeitos/feitiços; poderes antigos virarem sistema sem regras; sombras esconderem gameplay; escopo de M1 crescer
- Próxima ação: importar [game/project.godot](game/project.godot) no Godot 4.7.2, rodar smoke e seguir game/TEST_PLAN.md; corrigir falhas antes de declarar protótipo funcional
- Não tocar: KB global e repositórios de outros projetos
- Ferramentas indisponíveis: Godot/runtime não executado
