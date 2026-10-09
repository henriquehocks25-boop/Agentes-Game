# ROADMAP — RPG de Sobrevivência / Construção 2D Isométrico

**Estado:** M0 — Direção parcialmente confirmada.
**Decisões confirmadas:** sobrevivência, construção, RPG, **2D isométrico**, **combate em tempo real**. **Estilo artístico CONFIRMADO: Pixel Art detalhada, ligeiramente dark, em 2D isométrico.**
**Referências da KB:** ../../STUDIO_WORKFLOW.md, ../../knowledge/game_design/scope_vertical_slice.md, progression.md.

## M0 — Direção (atual)
**Entregáveis:** FORJA_PROJECT.md, GDD.md, RPG_SYSTEMS.md, ART_DIRECTION.md, FORJA_STATE.md.
**Ainda falta:** definir ambientação narrativa, paleta detalhada, escala de pixel/tile, câmera detalhada (zoom/cobertura), mecânicas concretas do combate (mira, ataque, defesa), versão do Godot, plataforma e aprovação do loop inicial de fogueira/frio.
**Gate:** objetivos e primeiro exemplar acordados e revisados. A direção geral de Pixel Art está confirmada, mas o exemplar ainda deve comprovar qualidade, detalhe e legibilidade sob clima dark. Sem supor aprovação da proposta do loop.

## M1 — Proof slice (proposto)
1. Confirmar Godot exato; criar projeto 2D com controle e profundidade isométrica visíveis; testar escala e nitidez de pixels no zoom escolhido.
2. Criar uma clareira fixa e movimento/colisões básicos.
3. Coletar madeira e pedra; exibir inventário.
4. Colocar e abastecer uma fogueira com validação do local.
5. Sobreviver a uma noite com indicador de risco e feedback de calor.
6. **RPG mínimo:** um objetivo visível, uma recompensa de XP, um avanço e uma escolha entre dois perks que afetam coleta ou frio.
7. **M1-B (proposta de prova de combate):** um encontro em tempo real com 1 inimigo e 1 ação ofensiva básica, feedback de acerto/dano, aviso de ataque, consequência de falha e oportunidade de evitar perigo por posicionamento. Especificidades de armas, habilidades e mira aguardam direção.
8. Testar o ciclo completo, a integração combate/coleta/construção/progressão e legibilidade isométrica. **M1-A = ciclo de sobrevivência e construção; M1-B = prova do combate em tempo real antes de fechar M1.**
**Gate:** critérios em GDD.md §6; evidências reais, 10 execuções manuais; relatório revisor/QA. Não declarar PASS antecipadamente.

## M2 — Vertical slice (proposto)
Experiência curta representativa com 1 estrutura adicional, 1 oportunidade de progressão adicional, UI e áudio refinados, salvamento simples, combate em tempo real refinado e **Pixel Art isométrica detalhada, atmosfera um pouco dark, com qualidade-alvo definida no ART_DIRECTION.md**. Expandir inimigos/ataques somente após passar a prova de M1-B.
**Gate:** target-fit >= 3/4, asset quality >= 3/4, readability >= 3/4 e desempenho no hardware-alvo, com captura isométrica diurna/noturna inspecionada em resolução de jogo, sem borrões na pixelagem nem sombras que escondam combate/interações.

## M3 — Expansão (condicionada ao gate anterior)
Incluir gradualmente biomas, missões, especializações, equipamentos, crafting, inimigos e opções de combate em tempo real conforme prioridades aprovadas e evidência do loop.

## M4 — Polimento/QA
Regressão, acessibilidade, performance, correções de issues críticas e empacotamento para a plataforma.

## Papéis
Diretor: loop, RPG e escopo → Construtor: cenas e sistemas 2D → Artista: contrato visual isométrico e assets → Revisor independente/Guardião: evidências e QA → Estúdio: gate de milestone.

## Invariantes
Não alterar KB global. Não confundir 2D isométrico com mundo 3D. Não proliferar assets/sistemas antes de provar o núcleo. Não reportar testes sem executá-los.
