# Update Protocol

## Quando revisar
Revise um módulo quando uma fonte primária mudar, uma versão relevante do Godot/OpenAI/Codex mudar, ou um eval revelar uma regra incorreta ou cara.

## Passos
1. Localize módulos dependentes.
2. Reabra a fonte primária atual.
3. Compare com a versão registrada.
4. Atualize somente o que mudou.
5. Ajuste data, confiança e status.
6. Rode os evals afetados.
7. Registre a revisão em VERIFICATION_LOG.md.

## Estados
stable | experimental | deprecated | needs_review

## Regra
Não atualizar a KB por novidade irrelevante. Atualize quando a mudança altera uma decisão do agente.
