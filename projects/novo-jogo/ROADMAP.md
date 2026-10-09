# ROADMAP — Milestones, entregas e gates

**Projeto:** Sobrevivência/Construção · **Estado atual:** M0 — Direção em aberto.
**Referência:** ../../STUDIO_WORKFLOW.md

## M0 — Direção
**Entrega:** FORJA_PROJECT.md + GDD v0.1 (hipóteses marcadas).
**Concluir quando:** perspectiva, estilo visual, alvo, pilares, loop de sobrevivência, risco e primeira cena estiverem definidos e aprovados.
**Gate:** Diretor de Jogo define escopo; QA/revisor independente revisa completude. Não alegar aprovação automática.

## M1 — Proof slice
**Produzir, após confirmação M0:**
1. Projeto Godot na versão exata aprovada, mapa pequeno e personagem.
2. Coleta de madeira e pedra.
3. Inventário e custo de construção da fogueira.
4. Posicionamento validado e abastecimento.
5. Uma noite com pressão de frio, sucesso/derrota e feedback.
**Gate:** testar loop ponta a ponta, registros de erros, pelo menos 10 ciclos manuais, revisão das decisões do jogador.

## M2 — Vertical slice
**Produzir:** trecho curto representativo com construção adicional, UI real, visual próximo do alvo e pipeline de arte repetível.
**Gate:** target-fit >= 3/4, asset-quality >= 3/4, readability >= 3/4; nenhum MUST-NOT violado; validação de performance no hardware-alvo.

## M3 — Expansão controlada
Novos recursos, construções, biomas ou sistemas **somente** após resultados de M2 e priorização por pilar/custo.

## M4 — Polimento e QA
Corrigir BLOCKER/CRITICAL/MAJOR, testes de regressão, acessibilidade básica, exportação da plataforma escolhida.

## Fluxo de agentes
Pesquisa (se lacuna concreta) → Diretor → Construtor Godot ↔ Artista → Revisor independente / Guardião → Estúdio.
**No M0 atual:** Diretor é o papel principal; nenhuma implementação ou auditoria de runtime foi executada.

## Proibições de processo
- Não alterar arquivos globais da KB para adaptar uma hipótese de jogo.
- Não declarar build funcional ou jogo pronto sem rodar.
- Não adicionar conteúdo massivo antes de verificar o pequeno loop.
- Não presumir APIs, versões, assets, paleta ou input mappings.
