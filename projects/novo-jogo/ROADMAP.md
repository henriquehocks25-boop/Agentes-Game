# ROADMAP — RPG de Sobrevivência / Construção 2D Isométrico

**Estado:** M1 — protótipo-fonte criado; execução e testes de runtime **NOT_RUN**. M0 ainda possui parâmetros finais abertos; não confundir código criado com milestone aprovado.
**Decisões confirmadas:** sobrevivência, construção, RPG, **2D isométrico**, **combate em tempo real**. **Estilo artístico CONFIRMADO: Pixel Art detalhada, ligeiramente dark, em 2D isométrico.** **Mundo CONFIRMADO: fantasia medieval com florestas misteriosas, ruínas antigas, vilarejos e criaturas.** **Magia CONFIRMADA: rara e misteriosa, associada a ruínas, artefatos e poderes antigos.**
**Referências da KB:** ../../STUDIO_WORKFLOW.md, ../../knowledge/game_design/scope_vertical_slice.md, progression.md.

## M0 — Direção (atual)
**Entregáveis:** FORJA_PROJECT.md, GDD.md, RPG_SYSTEMS.md, ART_DIRECTION.md, **WORLD_DESIGN.md**, **MAGIC_SYSTEM.md**, FORJA_STATE.md.
**Ainda falta:** definir regras/origem e momento de descoberta da magia rara, lore e detalhes das regiões/criaturas, paleta detalhada, escala de pixel/tile, câmera detalhada (zoom/cobertura), mecânicas concretas do combate (mira, ataque, defesa), versão do Godot, plataforma e aprovação do loop inicial de fogueira/frio.
**Gate:** objetivos e primeiro exemplar acordados e revisados. A direção geral de Pixel Art está confirmada, mas o exemplar ainda deve comprovar qualidade, detalhe e legibilidade sob clima dark. Sem supor aprovação da proposta do loop.

## M1 — Proof slice (implementação inicial no GitHub, sem teste no motor)
**Código-fonte:** [game/](game/) com movimentação, ataque/defesa/esquiva, IA de criatura, drops, XP, coleta, crafting, melhoria de armas e estruturas simples. **Testes:** NOT_RUN por ausência de Godot neste ambiente. Não aprovar gate até importação/execução local.
**Guia e evidência a produzir:** [game/README.md](game/README.md) e [game/TEST_PLAN.md](game/TEST_PLAN.md).

### Critérios originais
1. Confirmar Godot exato; criar projeto 2D com controle e profundidade isométrica visíveis; testar escala e nitidez de pixels no zoom escolhido.
2. Criar uma **clareira de floresta misteriosa** fixa e movimento/colisões básicos, sem obrigar ruínas ou vilarejos completos nesse primeiro mapa.
3. Coletar madeira e pedra; exibir inventário.
4. Colocar e abastecer uma fogueira com validação do local.
5. Sobreviver a uma noite com indicador de risco e feedback de calor.
6. **RPG mínimo:** um objetivo visível, uma recompensa de XP, um avanço e uma escolha entre dois perks que afetam coleta ou frio.
7. **M1-B (proposta de prova de combate):** um encontro em tempo real com 1 **criatura hostil de teste (espécie TBD)** e 1 ação ofensiva básica, feedback de acerto/dano, aviso de ataque, consequência de falha e oportunidade de evitar perigo por posicionamento. Categorias de armas já confirmadas: espada, machado, lança, arco e escudo; a mira final e os parâmetros de equilíbrio ainda necessitam validação.
8. **Não incluir sistema mágico jogável no M1, pois a magia será descoberta mais adiante** sem decisão específica; manter raridade e mistério como identidade de mundo, não requisito técnico antecipado. Testar o ciclo completo, a integração combate/coleta/construção/progressão e legibilidade isométrica. **M1-A = ciclo de sobrevivência e construção; M1-B = prova do combate em tempo real antes de fechar M1.**
**Gate:** critérios em GDD.md §6; evidências reais, 10 execuções manuais; relatório revisor/QA. Não declarar PASS antecipadamente.

## M2 — Vertical slice (proposto)
Experiência curta representativa com 1 estrutura adicional, 1 oportunidade de progressão adicional, UI e áudio refinados, salvamento simples, combate em tempo real refinado e **Pixel Art isométrica detalhada, atmosfera um pouco dark, com qualidade-alvo definida no ART_DIRECTION.md**. Expandir inimigos/ataques somente após passar a prova de M1-B. **Opcional mediante aprovação**: um único indício ambiental de magia antiga, sem implementar mecânica mágica completa.
**Gate:** target-fit >= 3/4, asset quality >= 3/4, readability >= 3/4 e desempenho no hardware-alvo, com captura isométrica diurna/noturna inspecionada em resolução de jogo, sem borrões na pixelagem nem sombras que escondam combate/interações.

## M3 — Expansão (condicionada ao gate anterior)
Incluir gradualmente regiões de florestas misteriosas, ruínas antigas e vilarejos, espécies de criaturas, missões, armas/armaduras melhores e, depois da exploração relevante, desbloqueios de **habilidades e armas mágicas raras** conforme prioridades aprovadas. Não presumir classes de magos ou feitiços comuns no começo. A magia rara já é parte confirmada do universo; qualquer mecânica específica exige validação.

## M4 — Polimento/QA
Regressão, acessibilidade, performance, correções de issues críticas e empacotamento para a plataforma.

## Papéis
Diretor: loop, RPG e escopo → Construtor: cenas e sistemas 2D → Artista: contrato visual isométrico e assets → Revisor independente/Guardião: evidências e QA → Estúdio: gate de milestone.

## Invariantes
Não alterar KB global. Não confundir 2D isométrico com mundo 3D. Não proliferar assets/sistemas antes de provar o núcleo. Não reportar testes sem executá-los.
