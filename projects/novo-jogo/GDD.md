# GDD v0.3 — RPG de Sobrevivência e Construção (2D Isométrico)

**Estado:** M0 — direção parcialmente confirmada, outras decisões abertas.
**CONFIRMADO pelo usuário:** jogo de **sobrevivência + construção + RPG**, em **2D isométrico**, com **combate em tempo real**. O **estilo gráfico permanece a definir**, sem escolha antecipada de pixel art, desenho, pintura etc.
**PROPOSTO** significa hipótese de design não aprovada. **TBD** significa decisão aberta.

## 1. Visão
**Proposta de fantasia:** explorar um ambiente perigoso, evoluir um personagem e erguer um refúgio que permita sobreviver e alcançar novas regiões.

A experiência é híbrida:
- **Sobrevivência:** gerir recursos e responder a riscos legíveis.
- **Construção:** criar estruturas com utilidade real para proteger e melhorar a base.
- **RPG:** desenvolver o personagem por meio de experiências, escolhas de habilidades e objetivos no mundo.

**Representação visual confirmada:** **2D isométrico**, com sprites/cenários 2D que simulam profundidade por projeção, sobreposição e ordenação. Não escolher pipeline 3D nem rotular como 2.5D sem outra decisão explícita.
**Nome, tema, paleta, estilo artístico, narrativa, plataforma, Godot exato, classes, armas, habilidades e regras específicas de combate:** TBD. O **tipo de combate (tempo real)** já está confirmado.

## 2. Pilares — propostas
1. **Exploração recompensadora:** arriscar-se fora do abrigo traz materiais e progresso relevante.
2. **Construção com consequência:** cada estrutura altera opções de sobrevivência e exploração.
3. **Progressão RPG com escolhas:** evoluir muda o que o personagem consegue fazer ou como resolve problemas, não só números.
4. **Sobrevivência legível:** os riscos são previsíveis e têm contramedidas compreensíveis.

Toda feature deve servir a um pilar, gerar uma decisão e ter feedback visível.

## 3. Core loop — proposta integrada
**PROPOSTO:** explorar a área isométrica → coletar materiais → enfrentar uma ameaça com combate em tempo real quando necessário → ganhar experiência / concluir objetivo → escolher melhoria de personagem → construir ou abastecer a base → suportar um evento de risco (noite) → acessar novas possibilidades e repetir.

**Tensão de recursos proposta:** madeira é disputada entre construir e alimentar uma fogueira.
**Tensão de personagem proposta:** melhorar coleta acelera progresso, enquanto resiliência reduz perigo noturno.

### Meta loop — futuro, não M1
Ampliar a base e o repertório de habilidades → conseguir enfrentar desafios maiores → explorar novas áreas → obter materiais/objetivos melhores.

## 4. RPG integrado à sobrevivência
O gênero RPG **não deve ser apenas uma barra de XP decorativa**. A progressão deve criar uma escolha útil durante o próprio loop.

**Proposta de protótipo M1:**
- Recurso de experiência (XP) ganho ao concluir um objetivo curto (ex.: primeiro marco de coleta).
- Um avanço de nível e **uma** decisão entre dois benefícios alternativos que possam ser observados no teste:
  - **Coletor:** aumenta o rendimento de madeira.
  - **Resistente:** reduz o acúmulo de frio na noite.
- Um objetivo/jornada simples: “Prepare o acampamento e sobreviva à primeira noite”.
- O efeito selecionado permanece durante a sessão e influencia o resultado.
- XP, nomes, custos, percentuais e balanceamento são **valores de teste**, não decisões finais.

**Combate em tempo real é requisito confirmado.** Em M1, a proposta é testar um confronto mínimo e verificável, sem travar a definição de armas, magia, esquiva, lock-on ou direção de mira. Ver [COMBAT_DESIGN.md](COMBAT_DESIGN.md).

**Propostas posteriores (M2/M3, exigem confirmação):** atributos adicionais, equipamentos, tipos de inimigos, NPCs e diálogos, novas missões, crafting especializado, classes, habilidades ativas, exploração com segredos e lore. **Não confirmado:** classes, magia, quantidade de ataques, habilidades e peso narrativo.

## 5. Prova jogável M1 — hipótese de produção
**Exemplar único proposto:** pequena clareira isométrica com personagem, nós de madeira e pedra, uma fogueira posicionável, um confronto de combate em tempo real, objetivo simples, progressão de uma escolha e uma noite de frio.

Sistemas:
1. **Movimentação em mundo 2D isométrico:** controles coerentes com direção na tela e ordenação por profundidade; colisão sem atravessar obstáculos.
2. **Coleta:** madeira/pedra com resposta visual e inventário numérico.
3. **Construção:** fantasma/preview de fogueira, validade de terreno e custo de recursos; custo de teste inicial 5 madeiras + 2 pedras.
4. **Sobrevivência:** ciclo curto dia/noite; frio noturno; fogueira com combustível e raio de proteção legível.
5. **Combate em tempo real (proposta M1-B):** um tipo de ameaça, um ataque básico responsivo, feedback de acerto/erro/dano, sinalização perceptível do ataque inimigo, dano e recuperação. A existência do combate em tempo real é CONFIRMADA; os verbos e as regras exatas ainda são PROPOSTOS.
6. **RPG:** objetivo rastreável, um marco de XP, seleção de um de dois benefícios verificáveis.
7. **Feedback/HUD:** recursos, tempo/fase, frio, fogo, XP/nível, objetivo, escolha e condição vital em combate.
8. **Resultado:** sobreviver à primeira noite ou perder; reiniciar a sessão claramente.

**Fora do M1:** persistência, multiplayer, loot extenso, geração procedural, IA complexa, equipamento extenso, árvore de talentos, múltiplas armas/inimigos e artes finais em grande quantidade. **Uma prova mínima de combate real-time faz parte do escopo proposto, não combate elaborado.**

## 6. Risco principal e experimentos
**Risco central:** exploração/coleta ↔ construção ↔ progressão ↔ combate em tempo real podem parecer sistemas desconexos; é preciso validar se o confronto afeta a decisão de arriscar-se para obter recursos e se o controle é legível na isometria.

**Experimento A:** jogador entende coleta, posicionamento e sobrevivência sem depender de tutorial longo.
**Experimento B:** a escolha “Coletor” versus “Resistente” gera uma decisão real ligada ao risco da noite.
**Experimento C:** perspectiva isométrica preserva legibilidade de personagens, recursos, construções e ataques sem oclusão incorreta.
**Experimento D:** um encontro de combate em tempo real é compreensível e responsivo, com ataque inimigo antecipável, dano reconhecível, possibilidade de evitar perigo por posicionamento e recuperação/falha coerentes.

### Critérios de aceite para M1 (ainda não testados)
- [ ] Personagem se move sem inversão confusa e colide corretamente com obstáculos.
- [ ] Objetos/estruturas/personagem são ordenados visualmente de acordo com sua posição no chão, sem popping absurdo.
- [ ] Recursos são coletados e consumidos corretamente; falhas de construção não subtraem itens.
- [ ] O objetivo simples tem progresso claro, concede XP e libera **uma** escolha de benefício.
- [ ] Cada benefício escolhido causa mudança observável, sem desbloquear ambos ao mesmo tempo.
- [ ] Um inimigo de teste pode entrar em confronto em tempo real com o jogador; ação ofensiva, feedback de dano, sinal de perigo e consequência de derrota/recuperação são perceptíveis.
- [ ] O combate permite decisão de posicionamento e não interfere indevidamente em coletar, construir e interagir.
- [ ] Uma noite de frio termina em sucesso ou falha, com efeitos da fogueira legíveis.
- [ ] O loop completo pode ser reiniciado e percorrido em pelo menos 10 sessões manuais sem falhas críticas observadas.
- [ ] Registros de testes reais, capturas e versão de Godot anexados antes de declarar PASS.

Nenhum teste foi realizado nesta fase documental.

## 7. M2 — Vertical slice proposto
- Arte 2D isométrica representativa em **uma** região; HUD final representativa.
- Uma construção adicional com função distinta, uma melhoria de personagem adicional e progresso do objetivo.
- Inventário/crafting refinado, feedback de interação e salvamento simples.
- Refinamento do combate em tempo real confirmado, com apenas uma variação significativa de ameaça ou habilidade **se o primeiro confronto passar pelo gate**.
- Gate visual: target-fit ≥ 3/4, asset quality ≥ 3/4, readability ≥ 3/4, sem MUST-NOT violado; verificar desempenho na plataforma-alvo.

## 8. Contrato técnico preliminar (não implementação)
- Preferência de abordagem: **Godot 4.x 2D** com `Node2D`, objetos com origem/pivô coerente com o pé da sprite, colisões e ordenação por profundidade. **Não usar APIs sensíveis à versão sem confirmar a versão instalada.**
- A projeção isométrica é uma apresentação visual do plano do mundo; cálculos de distância, interação, inventário e estado do personagem **não devem depender de coordenadas de pixel da tela**.
- Avaliar TileMapLayer/alternativa disponível conforme versão exata, sobreposição, oclusão de estruturas e pivôs antes de expandir arte.
- Dados de recursos, receitas, perks, objetivos e parâmetros de combate: candidatos a `Resource` ou estruturas de dados separados do comportamento; decisões de arquitetura a validar.
- Ações semânticas de input e resolução de física devem ser separadas; confirmar versão exata do Godot antes de especificar APIs, hitboxes, consultas físicas ou animações do ataque. Revisar [COMBAT_DESIGN.md](COMBAT_DESIGN.md).
- Nenhum projeto Godot ou script foi criado.

## 9. Pendências de direção
- **D001 — CONFIRMADA:** visualização 2D isométrica.
- **D002 — CONFIRMADO COMO INDEFINIDO:** estilo de arte permanece **TBD**, sem assumir pixel art, ilustração, pintura, paleta ou material.
- **D003 — EM ABERTO:** ambientação e tom (fantasia, medieval, pós-apocalíptico, natureza etc.).
- **D004 — EM ABERTO:** plataforma, Godot exato, resolução e controles.
- **D005 — PROPOSTO:** fogueira/frio como primeiro loop; usuário ainda não aprovou.
- **D006 — EM ABERTO:** single-player ou multiplayer (M1 proposto solo).
- **D007 — CONFIRMADO:** RPG faz parte do gênero do projeto.
- **D008 — PARCIALMENTE CONFIRMADA:** **combate em tempo real**; ainda TBD: controle/mira, armas, magia, esquiva, classes, IA e peso narrativo das missões.
- **D009 — PROPOSTO:** primeiro mecanismo RPG = XP + escolha de benefício útil ao loop.
- **D010 — PROPOSTO:** prova de combate com 1 ameaça e 1 ataque básico, sem decidir antecipadamente arma ou efeitos visuais.

Mudanças futuras devem atualizar este GDD, FORJA_PROJECT e FORJA_STATE de forma consistente.
