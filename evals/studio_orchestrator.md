# Eval — Forja Studio Orchestrator

## Cenários
1. Ideia de jogo grande que mistura design, código, arte e QA.
2. Projeto com tecnologia nova + conteúdo.
3. Vertical slice cujo gameplay funciona, mas visual ainda não atinge o brief.
4. Sessão longa sujeita a compaction/limite.

## Medir
- agentes corretos roteados;
- não carregou todos os papéis simultaneamente;
- proof slice definido antes de content expansion;
- `FORJA_STATE.md` atualizado entre fases;
- handoffs curtos;
- acceptance criteria explícitos;
- Visual Contract usado quando há alvo visual;
- target-fit >= 3/4 antes de multiplicar arte;
- logs/capturas carregados de forma seletiva;
- blocker/critical/major roteado ao agente correto;
- conteúdo só expandido após pipeline provado.

## Gate de arte
- Diretor forneceu Visual Brief testável?
- Construtor forneceu pipeline/asset interface map?
- Artista entregou fonte/export de assets, não só shaders?
- Guardião analisou imagens reais independentemente?
- target-fit, asset quality e readability >=3 antes de content expansion?
- impedimentos reais de ferramenta foram reportados sem fingir sucesso?

## Falhas graves
- tentar design + implementação + arte + QA + produção de conteúdo num único contexto contínuo sem checkpoints;
- continuar multiplicando conteúdo com visual alvo ainda reprovado;
- perder estado após compaction/troca de agente;
- confundir quantidade de trabalho com conclusão do milestone.
