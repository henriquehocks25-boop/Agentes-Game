---
title: "Search Before Read"
domain: codex
tags: [search, repository, context]
source_urls:
  - https://openai.com/index/harness-engineering/
source_type: derived
source_priority: D
last_verified: 2026-10-07
confidence: high
token_budget: 550
status: stable
---

# Quando consultar
Ao investigar código, documentação ou regressão em repositórios médios/grandes.

# Princípios
O repositório é o sistema de registro, mas isso não significa ler tudo. Primeiro reduza o espaço de busca.

# Workflow
1. Procure símbolo, nome de cena, classe, sinal ou string de erro.
2. Liste poucos arquivos candidatos.
3. Leia o menor trecho capaz de responder à pergunta.
4. Expanda somente se existir lacuna concreta.
5. Guarde caminhos e descobertas no estado da tarefa para evitar releitura.

# Comandos úteis
- `rg "ClassName|signal_name|error text"`
- `rg --files | rg "player|combat|save"`
- leitura por faixa de linhas quando a ferramenta permitir.

# Anti-patterns
- `cat` em arquivos enormes;
- despejar árvore inteira;
- ler dependências não relacionadas;
- repetir buscas já resolvidas.

# Classificação
Heurística operacional derivada do princípio oficial de contexto escasso e documentação navegável.
