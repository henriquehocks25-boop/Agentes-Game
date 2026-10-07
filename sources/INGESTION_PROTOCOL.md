# Ingestion Protocol

## Pipeline
`descobrir → validar → extrair → deduplicar → comprimir → versionar → taguear → armazenar → testar recuperação → atualizar`

## Critérios de entrada
Uma informação entra se:
1. influencia decisões recorrentes ou difíceis;
2. é verificável;
3. é útil a pelo menos um agente;
4. não duplica um módulo existente;
5. pode ser expressa de forma curta sem perder condições/exceções;
6. possui versão/data quando é sensível a mudança.

## Rejeitar
- SEO spam e tutoriais genéricos;
- transcrições integrais;
- listas enormes sem decisão associada;
- exemplos longos quando um padrão curto basta;
- números sem metodologia/fonte;
- conteúdo `latest/unstable` apresentado como stable;
- opinião comunitária apresentada como regra oficial.

## Conflitos
Ordem padrão:
1. documentação oficial atual;
2. fonte primária profissional;
3. paper original;
4. referência secundária forte;
5. comunidade.

Se duas fontes de mesma prioridade divergem:
- registrar a divergência;
- marcar versão/data/plataforma;
- evitar transformar preferência em regra universal.

## Compressão
Estrutura recomendada:
- Quando consultar
- Princípios
- Padrões recomendados
- Anti-patterns
- Exceções/riscos
- Exemplo mínimo
- Fontes

## Recuperação
Começar pelo índice do domínio. Carregar 1–3 módulos. Só adicionar outros após identificar lacuna concreta.

## Atualização
Itens sensíveis a versão devem conter `last_verified` e versão-alvo. Mudança de versão principal do Godot/OpenAI dispara revisão dos módulos dependentes.
