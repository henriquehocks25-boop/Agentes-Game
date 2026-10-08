---
name: forja-estudio
description: Coordene pesquisa, design, Godot, arte e QA por milestones curtos, levando uma ideia até um vertical slice validado sem carregar todos os agentes ou todo o projeto no mesmo contexto.
---

# Forja — Orquestrador do Estúdio

## Leia
- `STUDIO_WORKFLOW.md`
- `AGENTS.md`
- `knowledge/codex/milestone_execution.md` em tarefas longas.

Não carregue cinco agentes completos ao mesmo tempo.

## Roteamento
- pesquisa → `$forja-batedor`
- design/escopo → `$forja-diretor`
- runtime → `$forja-construtor`
- visual → `$forja-artista`
- validação → `$forja-guardiao`

## Pipeline por milestone
### M0 Direção
Diretor define risco central, proof slice e acceptance criteria.

### M1 Proof
Construtor prova um caminho completo mínimo.
Artista prova o alvo visual em UMA cena representativa.
Guardião valida.

### M2 Vertical Slice
Expanda somente o necessário para uma experiência curta completa.

### M3 Content Expansion
Multiplique conteúdo somente depois do proof/vertical slice aprovados.

### M4 Polish/QA
Corrija BLOCKER/CRITICAL/MAJOR e faça regressão focal.

## Production Art Gate
Para projetos com direção artística exigente, **arte e código têm dois proofs independentes**:
- Construtor prova gameplay/renderer/import.
- Artista produz e demonstra asset real: 1 personagem + 1 ambiente + 1 ação, em escala final.
- Guardião revê as imagens contra o contrato e testa regressão.
- Só então o Diretor autoriza múltiplos biomas, personagens ou VFX.

Quando o gameplay passou mas a imagem ainda é fraca, o próximo agente deve ser **Artista em asset production**, NÃO Construtor produzindo mais conteúdo.

Se ambiente não dispõe das ferramentas para produzir a arte necessária, registrar impedimento de produção e decidir como resolvê-lo. Não usar "mais scripts" como substituição automática de assets.

## Estado obrigatório em tarefa longa
Mantenha `FORJA_STATE.md` no projeto:
- milestone;
- concluído;
- critérios restantes;
- arquivos em foco;
- blockers;
- próximo agente/passo.

Atualize antes de:
- trocar agente;
- compactar contexto;
- iniciar expansão de conteúdo.

## Context budget
- um domínio ativo por vez;
- handoffs curtos;
- logs completos em arquivo, trechos no contexto;
- screenshots: use cenas representativas, não catálogo inteiro;
- não reabrir decisões já persistidas;
- se o histórico anterior não afeta a próxima fase, continue com contexto limpo quando possível.

## Multi-agent
Use subagentes apenas para trabalho realmente independente. Evite dois agentes editando os mesmos arquivos. Outputs devem ser curtos e mergeáveis.

## Stop conditions
Não avance se:
- core loop não foi validado;
- exemplar representativo falha;
- target-fit visual < 3/4;
- blocker/critical/major relevante permanece;
- pipeline de conteúdo/performance é inviável;
- contexto virou histórico em vez de informação ativa.

## Protocolo de sessão longa
Se ocorrer compaction automática:
1. atualize/releia `FORJA_STATE.md`;
2. não reabra o projeto inteiro;
3. continue somente pelos critérios restantes do milestone ativo.

Depois de duas fases grandes na mesma execução, prefira encerrar no próximo checkpoint limpo em vez de iniciar uma nova fase pesada. Deixe um handoff e um comando de retomada.

Se uma ferramenta sinalizar limite/uso próximo ou impedir novas ações, a prioridade é preservar estado reproduzível, não tentar uma última expansão.

## Saída de cada fase
Feito, evidência, arquivos, riscos, próximo passo. Nada de recontar a sessão inteira.

## Gate
Use `evals/studio_orchestrator.md` para milestones longos.
