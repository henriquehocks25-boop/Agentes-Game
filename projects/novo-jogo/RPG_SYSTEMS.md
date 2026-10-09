# RPG_SYSTEMS — Integração de RPG à Sobrevivência/Construção

**Gênero RPG e combate em tempo real CONFIRMADOS.** As mecânicas concretas, os ataques, armas, inimigos, atributos e demais detalhes abaixo são **PROPOSTOS**, não foram aprovados nem implementados. **Estilo visual CONFIRMADO: Pixel Art 2D isométrica detalhada, levemente dark**. Paleta exata, resolução e lore permanecem TBD. **Magia rara/misteriosa associada a ruínas, artefatos e poderes antigos está CONFIRMADA; será encontrada posteriormente por exploração e permitirá desbloquear habilidades/armas mágicas, nunca disponíveis no começo. Regras/custos e timing TBD.** **Mundo CONFIRMADO: fantasia medieval com florestas misteriosas, ruínas antigas, vilarejos e criaturas.**
**Fonte:** ../../knowledge/game_design/progression.md, systems_design.md e combat_design.md.

## Objetivo de design
Evitar que RPG seja um sistema paralelo de XP sem sentido. Progressão deve tornar diferentes as decisões de exploração, coleta, sobrevivência e construção.

## MVP proposto (M1)
| Peça | Regra de protótipo | Relevância |
|---|---|---|
| Objetivo | "Prepare o acampamento e sobreviva à primeira noite" | Guia a primeira sessão |
| XP | Recompensa por um marco de objetivo/coleta | Sinaliza avanço |
| Nível | Um nível alcançável durante a sessão | Testa feedback de evolução |
| Escolha | Uma entre duas melhorias | Cria uma decisão |
| Perk A | Coletor: mais madeira por coleta | Favorece construção |
| Perk B | Resistente: frio progride mais devagar | Favorece sobrevivência |

**Sem números fixados antes de playtest.** Evitar ganhar XP ilimitada repetindo uma interação banal. As recompensas precisam ser reproduzíveis nos testes.

## Combate RPG em tempo real — escopo e interfaces
- **CONFIRMADO:** ações de combate se resolvem em tempo real, não em turnos.
- **PROPOSTO para M1-B:** 1 inimigo representativo, 1 ataque básico, telegraph visível/legível, dano e feedback de hit, chance de evitar o perigo por movimento/posicionamento, morte ou recuperação consistente.
- **CONFIRMADO:** espadas, machados, lanças, arcos, escudos, armas com dano/alcance/velocidade diferentes, defesa e esquiva, IA básica para criatura inicial. **TBD:** mira final, números balanceados, habilidades ativas, progressão das peças, lock-on e estética específica.
- **Integração de progressão:** futuro perk de combate deve alterar decisões (alcance, tempo, consumo ou comportamento), não apenas amplificar dano; somente adicionar após validar o loop RPG proposto.
- **Referência:** [COMBAT_DESIGN.md](COMBAT_DESIGN.md).

## Magia rara — contrato narrativo confirmado, mecânicas abertas
A magia pertence ao mundo, ligada a ruínas, artefatos e poderes antigos; **não está disponível no início** e poderá ser desbloqueada pela exploração, trazendo novas habilidades e armas mágicas. **Não** foi decidido que o personagem possa conjurar como mago, ter mana, classes fixas ou outro recurso. Não tratar feitiços comuns como progressão-base obrigatória. Possíveis interações tardias com artefatos ou descobertas são PROPOSTAS e dependem de aprovação. Ver [MAGIC_SYSTEM.md](MAGIC_SYSTEM.md).

## Sistema proposto para evolução futura — M2/M3
1. **Atributos:** saúde, vigor e atributos funcionais; adicionar somente se cada um sustentar escolhas.
2. **Especializações em vez de classes obrigatórias:** exploração, sobrevivência, artesanato e combate; classes rígidas são uma alternativa em aberto.
3. **Equipamentos e inventário:** armas, armaduras e escudos fabricáveis/melhoráveis fazem parte dos requisitos confirmados; propriedades explícitas, balanceamento centralizado e variedade futura.
4. **Missões:** objetivos de exploração, sobrevivência ou construção; NPCs e narrativa só se a direção aprovar.
5. **Combate:** tempo real **CONFIRMADO**. Ritmo, armas, inimigos, classes, habilidades, mira e defesa **TBD**. O primeiro encontro mínimo é **PROPOSTO**, não design fechado.
6. **Crafting e progressão:** novas receitas devem solucionar problemas reais ou abrir estratégias, não somente inflar conteúdo.

## Dependências e riscos
- Um RPG com combate tem requisitos diferentes de um survival pacífico.
- Especializações podem tornar inúteis habilidades da outra trilha; testar trade-offs.
- Economia da construção não pode ser anulada por upgrades excessivos.
- Interface isométrica precisa manter clareza das ações e alvos.
- Multiplayer aumenta substancialmente complexidade do estado e sincronização.

## Perguntas de direção ainda abertas
- Combate: **tempo real confirmado**; quais armas, habilidades, mira, defesa e tipos de inimigos?
- Mundo: **fantasia medieval confirmada**, com **magia rara/misteriosa** ligada a **ruínas, artefatos e poderes antigos**. Ainda faltam origem/regras dos poderes, função dos vilarejos e espécies de criaturas.
- Progressão: classes fixas / árvores livres / perks leves?
- Missões: foco narrativo com NPCs ou objetivos sistêmicos de sobrevivência?

**Regra de escopo:** não criar quatro árvores de habilidades nem dezenas de missões antes da prova de uma decisão de progressão com impacto real.
