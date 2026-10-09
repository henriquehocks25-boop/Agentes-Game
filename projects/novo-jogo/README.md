# Novo Jogo — RPG de Sobrevivência e Construção 2D Isométrico

**CONFIRMADO:** RPG + sobrevivência + construção, visão **2D isométrica**, **combate em tempo real**, **Pixel Art detalhada com atmosfera levemente dark**, ambientação de **fantasia medieval** com **florestas misteriosas, ruínas antigas, vilarejos e criaturas**, além de **magia rara e misteriosa ligada a ruínas, artefatos e poderes antigos**.
**EM ABERTO:** origem e regras da magia, acesso a poderes jogáveis, lore e papel de cada região, espécies de criaturas, paleta exata, pixel scale, referências visuais específicas, armas/mira/defesa e outros detalhes de combate, versão exata do Godot, plataforma e escopo definitivo.
**Fase:** M1 — código de protótipo Godot criado, **execução/QA NOT_RUN neste ambiente**. Não chamar de build validado.

## Protótipo de código
- **[game/README.md](game/README.md)** — como abrir no Godot 4.7.2, controles, recursos implementados e limitações.
- **[game/project.godot](game/project.godot)** — projeto importável (runtime NOT_RUN).
- **[game/TEST_PLAN.md](game/TEST_PLAN.md)** — validação de gameplay, QA e testes headless previstos.

## Documentos do projeto
- [GDD.md](GDD.md) — GDD v0.7 com requisitos confirmados de combate, fabricação, personagem, criatura e magia tardia.
- [RPG_SYSTEMS.md](RPG_SYSTEMS.md) — progressão, habilidades e relação com combate em tempo real; separa confirmação de proposta.
- [COMBAT_DESIGN.md](COMBAT_DESIGN.md) — requisitos confirmados, proposta de encontro mínimo, riscos, critérios e decisões abertas.
- [ART_DIRECTION.md](ART_DIRECTION.md) — contrato de Pixel Art isométrica detalhada e levemente dark, critérios de nitidez, luz, leitura e qualidade.
- [WORLD_DESIGN.md](WORLD_DESIGN.md) — ambientação confirmada, funções propostas para florestas, ruínas, vilarejos e criaturas, escopo e pendências de lore.
- [MAGIC_SYSTEM.md](MAGIC_SYSTEM.md) — contrato de magia rara/misteriosa associada a ruínas, artefatos e poderes antigos; decisões e limites de escopo.
- [ROADMAP.md](ROADMAP.md) — milestones M0–M4 e critérios de aceite.
- [FORJA_PROJECT.md](FORJA_PROJECT.md) — contrato com CONFIRMADO, PROPOSTO e TBD.
- [FORJA_STATE.md](FORJA_STATE.md) — checkpoint e evidências.

## Knowledge Base utilizada (somente leitura)
- [AGENTS.md](../../AGENTS.md)
- [STUDIO_WORKFLOW.md](../../STUDIO_WORKFLOW.md)
- [Game Design](../../knowledge/game_design/index.md): pilares, loop, systems design, progression e escopo.
- [Godot](../../knowledge/godot/project_architecture.md): cenas e composição, após versão validada.
- [Arte/Perspectiva](../../knowledge/visual/camera_depth.md): câmera, profundidade e legibilidade.

## Próxima decisão
Primeiro **importar e executar o protótipo do diretório game/**, corrigir erros de parser/runtime e realizar testes de combate/coleta/fabricação/construção. Em seguida, substituir arte procedural por Pixel Art detalhada final e completar lore, balanceamento e desbloqueio futuro da magia.

## Regra
Não assumir que o projeto é 3D ou "2.5D" só porque a câmera é isométrica. Não declarar build/testes/arte pronta sem executá-los.
