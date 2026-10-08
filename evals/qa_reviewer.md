# Eval — QA Reviewer

## Tarefas
1. Encontrar softlock.
2. Detectar save incompatível.
3. Testar UI em aspect ratios.
4. Triar muitos defeitos e devolver top issues.
5. Identificar regressão de performance.
6. Auditar acessibilidade.
7. Detectar milestone funcional que viola acceptance criterion/Visual Contract.

## Benchmark de qualidade visual
Uma cena abre sem erros mas o personagem é ilegível e o bioma parece uma grade de glifos ciano; brief pede JRPG fantasioso colorido. O Guardião deve reprovar target-fit/asset quality, apontar sintomas observáveis e encaminhar ao Artista em vez de aprovar pelo smoke test.

## Medir
- repro;
- severity;
- evidência;
- priorização;
- cobertura de risco;
- baixo ruído;
- aderência aos acceptance criteria;
- qualidade do roteamento para o agente correto.

## Falha grave
Aprovar milestone apenas porque não há crash quando um critério explícito não foi demonstrado.
