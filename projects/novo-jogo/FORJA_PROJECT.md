# FORJA_PROJECT — Contrato verificável do projeto

> **M0 / planejamento v0.6.** CONFIRMADO = escolha do usuário; PROPOSTO = hipótese; TBD = pendente.

## Identidade
- Nome: TBD; diretório técnico: `projects/novo-jogo/`
- Gênero: **CONFIRMADO — RPG + Sobrevivência + Construção**
- Combate: **CONFIRMADO — em tempo real** (não por turnos); regras específicas TBD
- Dimensionalidade/perspectiva: **CONFIRMADO — 2D isométrico** (sprites/cenários 2D em projeção isométrica)
- Público/experiência: **PROPOSTO** — explorar, evoluir personagem, erguer refúgio e enfrentar riscos
- Pilares (propostos): exploração recompensadora; construção com consequência; progressão RPG com escolhas; sobrevivência legível
- Godot versão exata: TBD (conhecimento Godot 4.x não determina versão do projeto)
- Renderer: TBD
- Plataforma: TBD
- Câmera: **2D isométrica confirmada**, zoom, limites, resolução/aspect TBD
- Hardware e alvo FPS: TBD
- Cena inicial `res://`: TBD; sem código/projeto Godot existente nesta pasta
- Branch: `main`; planejamento isolado em `projects/novo-jogo/`

## Design
- Core loop: **PROPOSTO** — explorar → coletar → XP / decisão de perk → construir → sobreviver a evento noturno → progredir
- Meta loop: **PROPOSTO** — ampliar base e especialização para novas regiões
- RPG: **CONFIRMADO como gênero**; **PROPOSTO M1** — objetivo, XP e escolha entre duas melhorias funcionais
- Combate: **CONFIRMADO — tempo real**. **PROPOSTO M1-B:** 1 encontro de ameaça e ataque básico. **TBD:** armas, mira, defesa, dodge, magia, ritmo, habilidades e IA
- Magia no mundo: **CONFIRMADA — rara e misteriosa, associada a ruínas, artefatos e poderes antigos**. Acesso, origens, limites e funções jogáveis **TBD**; ver [MAGIC_SYSTEM.md](MAGIC_SYSTEM.md).
- Classes, magia jogável, NPCs, missões narrativas: TBD
- Recursos/economia: **PROPOSTO** — madeira e pedra; madeira para estrutura/combustível
- Mundo/ambientação: **CONFIRMADO — fantasia medieval**, com **florestas misteriosas, ruínas antigas, vilarejos e criaturas**. **Poderes antigos, artefatos e ruínas** são parte do mistério mágico confirmado.
- Região inicial: **PROPOSTO M1** — uma clareira em floresta misteriosa; escala do mundo, localização/implementação de ruínas e vilarejos, espécies e lore **TBD**.
- Controles/InputMap: TBD
- Save schema: TBD; M1 proposto sem save

## Visual
- Técnica: **CONFIRMADO — arte/cenários 2D em composição isométrica**, não 3D obrigatório
- Estilo de arte: **CONFIRMADO — Pixel Art detalhada, levemente dark** (ambiente sombrio moderado; preservar contraste e cores).
- Qualidade/escala: **CONFIRMADO — riqueza visual intencional**; densidade de pixels, tile size, resolução base, paleta exata e iluminação específica **TBD**
- Contrato visual: **[ART_DIRECTION.md](ART_DIRECTION.md)** define MUST-HAVE/MUST-NOT; **[WORLD_DESIGN.md](WORLD_DESIGN.md)** documenta os quatro elementos centrais confirmados; **[MAGIC_SYSTEM.md](MAGIC_SYSTEM.md)** registra raridade e ligações com ruínas/artefatos/poderes antigos. Referências concretas, materiais/paleta final, personagens, criaturas específicas e pipeline-fonte: **TBD**
- Contrato técnico preliminar: validar pivôs de sprites, camadas e profundidade, oclusão e leitura de construção no Godot 2D; configuração detalhada TBD

## Arquitetura
- Organização preliminar sugerida: cenas/Nodes por feature, dados de itens, receitas e perks independentes; **não implementada**
- Scenes/autoloads/resources/interfaces reais: TBD
- Plugins/SDK/licenças: TBD
- Paths: `projects/novo-jogo/`
- ADRs: decisão confirmada de perspectiva/gênero registrada neste documento; ADR detalhada ainda não criada

## Validação
- Critérios: propostas no `GDD.md` e `ROADMAP.md`
- Exemplar proposto: **clareira de floresta misteriosa** isométrica, madeira/pedra, fogueira, risco noturno, progressão de 1 perk **e encontro em tempo real com criatura provisória** (espécie TBD)
- Risco: repetição do loop sem decisão relevante, combate desconectado da sobrevivência e legibilidade/oclusão isométrica
- Testes: **NOT_RUN**, nenhum projeto Godot executável
- Performance: NOT_RUN
- Evidências: somente arquivos Markdown salvos no GitHub
- Ainda não verificados: Godot exato, **implementação e qualidade visual**, pixel scale/paleta, hardware, plataforma, **detalhes mecânicos de combate e magia jogável**, lore, tempo de jogo e números de balanceamento

## Pendências para completar M0
1. **Direção artística e ambientação definidas:** Pixel Art 2D isométrica detalhada, levemente dark; fantasia medieval com florestas misteriosas, ruínas antigas, vilarejos e criaturas; **magia rara/misteriosa em ruínas, artefatos e poderes antigos**. **Pendente:** lore, paleta, pixel scale e exemplar visual de prova.
2. Definir detalhes de combate em tempo real: arma/ataque inicial, mira e defesa, sem presumir magia/classes.
3. Confirmar plataforma/versão Godot e controles.
4. Aprovar ou ajustar loop inicial fogueira/frio, prova de progressão e encontro mínimo.
5. Revisar escopo de M1 e critérios antes da implementação.
