# COMBAT_DESIGN v0.3 — Combate em Tempo Real (2D Isométrico)

> **CONFIRMADO**: combate em tempo real para RPG 2D isométrico de sobrevivência/construção. **CONFIRMADO**: **Pixel Art detalhada com atmosfera levemente dark**. **CONFIRMADO**: mundo de fantasia medieval com criaturas. **CONFIRMADO**: magia rara e misteriosa no mundo, associada a ruínas, artefatos e poderes antigos. **TBD**: armas, mira, defesa, habilidades, acesso à magia jogável, classes, espécies e hostilidade das criaturas, além da paleta específica. Conteúdo proposto a seguir não é aprovação do usuário nem implementação.

## Propósito do combate
Combate deve criar escolhas de **posicionamento, tempo de ataque, segurança e risco de sair da base**; não ser uma camada solta de dano/XP. Deve coexistir com explorar, coletar, construir e sobreviver, sem prejudicar a legibilidade isométrica.

## Contrato confirmado
- Tempo de resolução: **real time**, sem turno, grade tática ou pausa obrigatória para selecionar ação.
- A magia do universo é rara; **não presumir ataque mágico básico, mana, inimigos conjuradores ou feitiços disponíveis desde o início**. O primeiro confronto de M1-B pode ser não mágico.
- Mundo e câmera: **2D isométrico**, sem transformar o jogo em 3D apenas para implementar hitboxes.
- Estética: **Pixel Art 2D isométrica detalhada, levemente sombria**. Manter ataques, silhuetas e antecipações visíveis sobre cenários mais escuros. Paleta exata e efeitos individuais ainda em aberto.

## M1-B — Encontro mínimo proposto
Após a prova básica de coleta/construção/sobrevivência (M1-A), incorporar:
1. **Uma criatura hostil de teste (PROPOSTA)** visível na clareira de floresta misteriosa. A presença de criaturas no mundo é CONFIRMADA; espécie, IA e hostilidade generalizada não foram definidas.
2. **Um único verbo ofensivo** (ataque básico) de execução em tempo real, com alcance e recuperação verificáveis.
3. **Uma ação hostil antecipável** (telegraph de ataque), com janela de resposta por **posicionamento/movimento**, sem supor esquiva/dash.
4. **Feedback legível** de acerto, erro, dano e término do encontro; possibilidade de perder e reiniciar.
5. **Interação sistêmica simples** a validar: o encontro gera risco para alcançar algum recurso; derrotá-lo permite prosseguir com objetivo, sem exigir grandes tabelas de loot.

### Parâmetros de protótipo (TBD)
Alcance, dano, intervalo de ataque, velocidade do inimigo, HP, aggro, telegraph e recuperação devem ser dados ajustáveis, não valores arbitrários fixados no GDD.

### Decisões que NÃO estão tomadas
- Ataque corpo a corpo ou à distância? Qual arma inicial?
- Mira com mouse, direção do movimento, cursor projetado ou assistência?
- Esquiva/dash, bloqueio, stamina, habilidades ativas ou somente movimentação?
- **Criaturas fazem parte do mundo confirmado.** Quais espécies, temperamentos e papéis em combate? Outras categorias de oponentes são TBD.
- Progressão de combate via perks/skills, classes ou equipamento?
- Se/como poderes antigos podem aparecer no combate é TBD. Ver [MAGIC_SYSTEM.md](MAGIC_SYSTEM.md).
- Morte permanente, perda de itens, respawn ou checkpoint?
- PVE apenas ou algum tipo de PVP? Multiplayer ainda TBD.

## Requisitos de legibilidade
- Projéteis, armas, personagens e telegraphs precisam ser visíveis na vista isométrica.
- Separar **indicação antecipada do perigo** de **efeito de acerto**.
- Cuidar de pivôs, ordenação por profundidade e ocultação atrás de árvores/estruturas.
- Minimizar shake, efeitos excessivos e indicadores que encubram itens ou o chão.
- Seguir [ART_DIRECTION.md](ART_DIRECTION.md) para escala/contorno de pixel, contraste, iluminação e legibilidade; os detalhes de VFX só serão aprovados com exemplar e revisão visual.

## Godot 2D — proposta técnica, não código
- Input Map para ações semânticas (ex.: atacar), sem atribuir teclas até confirmar dispositivos.
- Separar intenção do jogador de movimento e resolução física.
- Usar estrutura de colisão/hitbox compatível com a versão de Godot efetivamente selecionada; **não** assumir que consultas de overlap após reposicionar uma `Area2D` reflitam o mesmo frame.
- Prefira lógica de dano e estado isolada da representação de sprite e efeito.
- Versão Godot, renderer, cena e APIs concretas: TBD; revisar `../../knowledge/godot/input_physics.md` ao implementar.

## Critérios de aceite propostos M1-B (NOT_RUN)
- [ ] O jogador consegue iniciar o ataque sem esperar o turno do inimigo.
- [ ] Hitbox e ataque não acertam alvos fora do alcance definido.
- [ ] A ameaça sinaliza uma intenção antes do dano de modo compreensível.
- [ ] É possível reduzir risco por movimento/posicionamento.
- [ ] Dano, recuperação/falha e desfecho do confronto têm feedback distinto.
- [ ] A oclusão isométrica não esconde golpes importantes.
- [ ] O confronto pode ser repetido sem regressões em coleta/construção.
- [ ] Evidência gravada, execução de testes e versão de Godot registradas antes de marcar PASS.

## Conhecimento-base consultado
- `../../knowledge/game_design/combat_design.md`: posicionamento, timing, telegraphs, trade-offs e feedback.
- `../../knowledge/game_design/scope_vertical_slice.md`: provar um exemplar antes de replicar conteúdo.
- `../../knowledge/godot/input_physics.md`: input semântico, resolução física, cuidado com overlaps de Area2D.
- `../../knowledge/visual/visual_contract.md`: não presumir estilo; gate de legibilidade e fidelidade à direção.

**Status:** documentação M0, nenhum script ou execução.
