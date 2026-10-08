# Agent Evals

Evals existem para medir qualidade e custo da KB/agentes.

## Benchmarks por disciplina
- `specialist_benchmarks.md` — 15 provas produtor→revisor.
- `technical_art_godot.md` — arte por código, shader, runtime e visual review.
- `independent_review.md` — evitar falso PASS e interfaces inventadas.
- `artist_ascii_jrpg.md` — alvo JRPG colorido com glifos nativos.

Não há resultado PASS implícito só porque o benchmark está versionado.

## Métricas comuns
- correção técnica;
- acceptance criteria atendidos;
- regressões;
- retrabalho;
- arquivos lidos;
- módulos KB lidos;
- contexto/tokens quando disponível;
- tool calls;
- tamanho/foco do diff;
- validações executadas;
- severidade de bugs pós-implementação.

## Regra
Compare versões de agente/KB sobre as mesmas tarefas. Não otimizar custo sacrificando correção.
