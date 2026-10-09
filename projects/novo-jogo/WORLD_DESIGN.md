# WORLD_DESIGN v0.2 — Fantasia Medieval Misteriosa

**Status:** M0. Este documento distingue **CONFIRMADO** (direção dada pelo usuário), **PROPOSTO** (hipótese para orientar design/prototipagem) e **TBD** (decisão ainda não tomada).

## 1. Visão confirmada do mundo
- **Ambientação:** fantasia medieval.
- **Elementos que deverão compor o mundo:** **florestas misteriosas**, **ruínas antigas**, **vilarejos** e **criaturas**.
- **Apresentação:** Pixel Art 2D isométrica detalhada, com atmosfera levemente dark — não sombria a ponto de comprometer cor e legibilidade.
- **Magia — CONFIRMADO:** rara e misteriosa, ligada a **ruínas, artefatos e poderes antigos**. Ver [MAGIC_SYSTEM.md](MAGIC_SYSTEM.md).
- **Jogabilidade-base:** RPG, sobrevivência e construção, com combate em tempo real.

**Não confirmado:** história central, origem das ruínas, regras de funcionamento e usuários da magia, povos, raças, criaturas específicas, vilarejos habitados ou abandonados, escala do mapa, composição exata dos biomas, clima, facções, NPCs, sistemas de reputação, quests e progressão do enredo.

## 2. Quatro elementos do mundo

### A. Florestas misteriosas — CONFIRMADO
**Função proposta:** primeira região jogável, com caminhos de exploração, fontes de materiais, áreas de maior risco, pontos de interesse e oportunidades de construir/reforçar abrigo.
**Possível tratamento artístico:** copas com múltiplos planos, sombras legíveis, raízes, pedras úmidas, clareiras e pontos luminosos discretos; detalhes não devem esconder ameaças/interações.
**TBD:** bioma, espécies de árvores, perigos e natureza do mistério.

### B. Ruínas antigas — CONFIRMADO
**Função proposta:** marcos visuais da exploração e locais de descoberta de história, recursos ou desafios, **sem supor masmorras obrigatórias**.
**Possível tratamento artístico:** alvenaria gasta, rachaduras, vegetação sobre pedra, silhueta arquitetônica distinta e contraste local.
**CONFIRMADO:** ruínas antigas são uma das fontes de mistério associadas à magia rara, artefatos e poderes antigos. **TBD:** civilização de origem, propósito, interior explorável, puzzles, guardiões, tesouros, frequência de fenômenos mágicos e vínculo com narrativa.

### C. Vilarejos — CONFIRMADO
**Função proposta:** contraponto à natureza, com arquitetura humana/fantástica, lugares de referência e, **caso aprovado**, NPCs, diálogo, comércio, reparos ou missões.
**Possível tratamento artístico:** volumes isométricos coerentes, telhados e paredes materiais distintos, caminhos orgânicos e luz pontual.
**TBD:** sociedades, moradores, tamanho, economia, uso de vilarejos como hub e grau de segurança.

### D. Criaturas — CONFIRMADO
**Função proposta:** dar vida e imprevisibilidade às regiões. As relações com combate, convivência, coleta e exploração serão decididas no design.
**Possível tratamento artístico:** silhuetas diferenciadas, animações legíveis, contraste controlado e linguagem visual coerente com fantasia medieval.
**TBD:** espécies, temperamentos, quantas são hostis/neutras/amigáveis, IA, biomas, loot e papel narrativo. **Não assumir que todas são inimigas nem que todas utilizam magia.** A magia existe, mas é rara.

## 2.1 Magia rara e misteriosa — CONFIRMADA
A magia está ligada a **ruínas, artefatos e poderes antigos**. É parte da identidade do mundo, não um recurso cotidiano de uso irrestrito. Suas regras exatas, história, acesso pelo jogador e implicações no combate/crafting **não estão definidos**. Exemplos de indícios ambientais (um objeto incomum ou fenômeno em uma ruína) são PROPOSTOS, não requisitos do protótipo. [MAGIC_SYSTEM.md](MAGIC_SYSTEM.md) registra limites e pendências.

## 3. Estrutura macro do mundo — PROPOSTA, não um mapa aprovado
- Uma **clareira de floresta** como teste inicial de movimentação, coleta, fogueira e risco noturno.
- **Uma criatura de teste**, provisória e sem espécie definida, para validar o combate em tempo real (M1-B).
- **Uma ruína visível** como marco distante ou próximo, somente se não ampliar demais M1.
- **Um vilarejo** como candidato a próxima região/hub na vertical slice M2; não exigir sistema de NPC/comércio no primeiro protótipo.
- Caminhos e transições legíveis, com decisões de exploração, risco e recompensa.
- O mapa completo, biomas adicionais, encontros, missões e geração procedural **não serão desenhados antes do exemplar M1/M2**.

## 4. Integração dos gêneros — PROPOSTA
| Pilar | Aplicação no mundo | Decisão de gameplay |
|---|---|---|
| Sobrevivência | Distância do refúgio, noite, riscos ambientais | Voltar para a base ou continuar explorando? |
| Construção | Abrigo/estruturas junto a rotas de recursos | Construir onde oferece mais vantagem? |
| RPG | Marcos de descoberta e melhorias funcionais | Qual desenvolvimento ajuda a próxima expedição? |
| Combate em tempo real | Conflitos opcionais/obrigatórios conforme futura definição | Enfrentar, contornar ou fugir de uma ameaça? |

Todos os exemplos da tabela são PROPOSTOS. Não introduzir sistemas complexos só porque o cenário permite.

## 5. Regras de worldbuilding e arte
1. **Mundo reconhecível sem UI**: silhuetas, materiais e pontos de interesse precisam evidenciar floresta, ruínas e vila.
2. **Mistério por sugestão**: atmosfera, caminho parcialmente oculto, detalhes ambientais; não usar escuridão total para mascarar ausência de conteúdo.
3. **Cenários jogáveis primeiro**: profundidade isométrica e obstáculos não podem bloquear leitura de recursos, personagens e golpes.
4. **Consistência visual**: escala de pixels, material, sombra e iluminação seguem [ART_DIRECTION.md](ART_DIRECTION.md).
5. **Originalidade**: referências podem informar princípios, mas não reproduzir layouts, sprites, criaturas ou lore de uma obra específica.
6. **Detalhamento com hierarquia**: microdetalhe concentrado em elementos relevantes, com áreas de repouso visual para o combate.

## 6. Gate de conteúdo
Antes de produzir muitas variantes, validar **uma clareira de floresta** como espaço navegável, **uma estrutura**, **um encontro com criatura**, **um objetivo de RPG** e **uma noite**; medir legibilidade e loop. Ruínas exploráveis e vilarejos completos só após aprovação da vertical slice.

## 7. Pendências para próximas decisões
- Tipo de fantasia medieval: **CONFIRMADO** que há magia rara/misteriosa ligada a ruínas, artefatos e poderes antigos; nível de folclore e outros detalhes de tom **TBD**.
- Papel dos vilarejos e moradores. **TBD**
- Tipos de criaturas e postura perante o jogador. **TBD**
- Mistério e origem das ruínas. **TBD**
- Natureza rara e misteriosa da magia: **CONFIRMADA**. Origem/regras/acesso/efeitos, religiões, reinos, facções e narrativa: **TBD**.
- Nome do mundo e protagonista. **TBD**
- Escala e estrutura do mapa. **TBD**

## Base de conhecimento
- `../../knowledge/game_design/scope_vertical_slice.md`: validar um exemplar antes de produzir conteúdo em massa.
- `../../knowledge/game_design/systems_design.md`: cada sistema sustenta decisões.
- `../../knowledge/visual/environment_art_production.md`: composição orgânica por massas, landmark e legibilidade.
- `../../knowledge/visual/art_direction.md`: identidade com restrições consistentes.
- `../../knowledge/visual/visual_contract.md`: contrato e critérios de validação.

**Não há lore final, arte, biomas ou mapa implementados nesta fase documental.**
