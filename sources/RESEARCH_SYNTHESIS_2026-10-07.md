# Research Synthesis — 2026-10-07

## Objetivo
Consolidar a pesquisa usada para criar a versão inicial da Knowledge Base dos cinco agentes.

## Conclusões fortes
- OpenAI: AGENTS.md deve funcionar como mapa/índice; conhecimento durável deve ser versionado e navegável no repositório.
- OpenAI: contexto excessivo e instruções acumuladas podem degradar o trabalho; progressive disclosure e skills específicas ajudam a manter foco.
- Godot: documentação /en/stable/ é a referência canônica desta KB; /latest/ pode documentar features instáveis.
- Godot: arquitetura deve explorar cenas, composição, Resources, Signals e Autoloads de forma proporcional à responsabilidade.
- Performance: medir gargalo com profiler antes de otimizar.
- Visual: qualidade precisa de ciclo de implementação, captura, crítica e refinamento; código sozinho não valida arte.
- Research: reviews são evidência qualitativa auto-selecionada e devem ser trianguladas.
- QA: priorização e repro claros são mais úteis do que listas extensas de observações.

## Correções aplicadas ao relatório de pesquisa profunda
- Recomendações de sites comunitários sobre Godot foram rebaixadas a heurísticas quando não confirmadas pela documentação oficial.
- Não tratamos GUT como framework oficial do Godot.
- Não mantivemos regras absolutas como "sempre usar object pooling", "sempre preload" ou "sempre conectar signals por código".
- MDA deve apontar para o paper original, não para Wikipedia.
- Práticas de Codex devem preferir fontes OpenAI; documentação de outros agentes pode inspirar, mas não é evidência oficial sobre Codex.
- Modelos e reasoning não são congelados em nomes fixos; a KB manda consultar documentação atual e comparar por evals.
- Steam reviews usam a documentação oficial atual do IUserReviewsService quando acesso estruturado for necessário.

## Próxima manutenção
Use UPDATE_PROTOCOL.md e os evals. A KB deve evoluir por evidência, não por acumulação.
