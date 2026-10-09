# RPG_SYSTEMS — Integração de RPG à Sobrevivência/Construção

**Gênero RPG confirmado.** Mecânicas abaixo são opções de design propostas, **não** funcionalidades aprovadas ou implementadas.
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

## Sistema proposto para evolução futura — M2/M3
1. **Atributos:** saúde, vigor e atributos funcionais; adicionar somente se cada um sustentar escolhas.
2. **Especializações em vez de classes obrigatórias:** exploração, sobrevivência, artesanato e combate; classes rígidas são uma alternativa em aberto.
3. **Equipamentos e inventário:** ferramentas, roupas e armas se o loop justificar; propriedades explícitas, balanceamento centralizado.
4. **Missões:** objetivos de exploração, sobrevivência ou construção; NPCs e narrativa só se a direção aprovar.
5. **Combate:** decisão pendente entre tempo real, por turnos, tático, simples defesa ambiental ou ausência de combate. Não implementar inimigos antes da escolha.
6. **Crafting e progressão:** novas receitas devem solucionar problemas reais ou abrir estratégias, não somente inflar conteúdo.

## Dependências e riscos
- Um RPG com combate tem requisitos diferentes de um survival pacífico.
- Especializações podem tornar inúteis habilidades da outra trilha; testar trade-offs.
- Economia da construção não pode ser anulada por upgrades excessivos.
- Interface isométrica precisa manter clareza das ações e alvos.
- Multiplayer aumenta substancialmente complexidade do estado e sincronização.

## Perguntas de direção ainda abertas
- Combate: tempo real / turnos / mínimo ou nenhum?
- Mundo: fantasia medieval / natureza / pós-apocalipse / outro?
- Progressão: classes fixas / árvores livres / perks leves?
- Missões: foco narrativo com NPCs ou objetivos sistêmicos de sobrevivência?

**Regra de escopo:** não criar quatro árvores de habilidades nem dezenas de missões antes da prova de uma decisão de progressão com impacto real.
