# ROADMAP — RPG de Sobrevivência / Construção 2D Isométrico

**Estado:** M0 — Direção parcialmente confirmada.
**Decisões confirmadas:** sobreviver, construir, incluir RPG e usar representação **2D isométrica**.
**Referências da KB:** ../../STUDIO_WORKFLOW.md, ../../knowledge/game_design/scope_vertical_slice.md, progression.md.

## M0 — Direção (atual)
**Entregáveis:** FORJA_PROJECT.md, GDD.md, RPG_SYSTEMS.md, FORJA_STATE.md.
**Ainda falta:** estética/ambiente, câmera detalhada (zoom/cobertura), RPG com ou sem combate, versão do Godot, plataforma e aprovação do loop inicial de fogueira/frio.
**Gate:** objetivos e primeiro exemplar acordados e revisados. Sem supor aprovação da proposta.

## M1 — Proof slice (proposto)
1. Confirmar Godot exato; criar projeto 2D com controle e profundidade isométrica visíveis.
2. Criar uma clareira fixa e movimento/colisões básicos.
3. Coletar madeira e pedra; exibir inventário.
4. Colocar e abastecer uma fogueira com validação do local.
5. Sobreviver a uma noite com indicador de risco e feedback de calor.
6. **RPG mínimo:** um objetivo visível, uma recompensa de XP, um avanço e uma escolha entre dois perks que afetam coleta ou frio.
7. Testar o ciclo completo, efeitos da progressão e legibilidade isométrica.
**Gate:** critérios em GDD.md §6; evidências reais, 10 execuções manuais; relatório revisor/QA. Não declarar PASS antecipadamente.

## M2 — Vertical slice (proposto)
Experiência curta representativa com 1 estrutura adicional, 1 oportunidade de progressão adicional, UI e áudio refinados, salvamento simples e arte 2D isométrica com qualidade-alvo. Combate somente se o usuário confirmar.
**Gate:** target-fit >= 3/4, asset quality >= 3/4, readability >= 3/4 e desempenho no hardware-alvo.

## M3 — Expansão (condicionada ao gate anterior)
Incluir gradualmente biomas, missões, especializações, equipamento, crafting e eventual combate de acordo com o projeto aprovado.

## M4 — Polimento/QA
Regressão, acessibilidade, performance, correções de issues críticas e empacotamento para a plataforma.

## Papéis
Diretor: loop, RPG e escopo → Construtor: cenas e sistemas 2D → Artista: contrato visual isométrico e assets → Revisor independente/Guardião: evidências e QA → Estúdio: gate de milestone.

## Invariantes
Não alterar KB global. Não confundir 2D isométrico com mundo 3D. Não proliferar assets/sistemas antes de provar o núcleo. Não reportar testes sem executá-los.
