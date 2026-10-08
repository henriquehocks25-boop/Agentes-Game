# Referências, livros e estudos de caso — regras de proveniência

## Fonte primária / alta confiança
- Godot stable: https://docs.godotengine.org/en/stable/ — API, renderers, workflow, export. **Sempre confirmar versão exata** e APIs.
- Godot demo projects: https://github.com/godotengine/godot-demo-projects — implementações abertas para estudar padrões; checar licença.
- Steamworks: https://partner.steamgames.com/doc — distribuição, Cloud, achievements; integrações exigem conta e configuração.
- GDC Vault: https://www.gdcvault.com/ — palestras de profissionais; diferenciar fala pública do que inferimos.
- Game Accessibility Guidelines: https://gameaccessibilityguidelines.com/ — recomendações de design, não certificação automática.
- The Book of Shaders: https://thebookofshaders.com/ — fundamentos de fragment shaders, adaptação necessária à Godot.
- Inigo Quilez: https://iquilezles.org/articles/ — matemática, SDF e procedural; validar licença/uso e portabilidade.

## Bibliografia por disciplina
- Game design: Jesse Schell, *The Art of Game Design*; Tracy Fullerton, *Game Design Workshop*; Ernest Adams/Joris Dormans, *Game Mechanics*.
- Level design: Christopher W. Totten, *An Architectural Approach to Level Design*; referências GDC de level designers, conforme gênero.
- Arquitetura: Robert Nystrom, *Game Programming Patterns*; Jason Gregory, *Game Engine Architecture*.
- Game AI: Ian Millington, *Artificial Intelligence for Games*; Steve Rabin, *Game AI Pro*.
- Matemática/colisão: Eric Lengyel, *Mathematics for 3D Game Programming and Computer Graphics*; Christer Ericson, *Real-Time Collision Detection*.
- Visual: James Gurney, *Color and Light*; Marcos Mateu-Mestre, *Framed Ink*; Richard Williams, *The Animator's Survival Kit*.
- Rendering: Akenine-Möller et al., *Real-Time Rendering*; *Physically Based Rendering: From Theory to Implementation*.
- Áudio: Karen Collins, *Game Sound*; Michael Sweet, *Writing Interactive Music for Video Games*.
- UX: Celia Hodent, *The Gamer's Brain*; Steve Krug, *Don't Make Me Think*.

## Jogos reais: o que observar, SEM inventar implementação interna
| Jogo | Evidência observável a analisar |
| --- | --- |
| Celeste | precisão, telegraph, checkpoints, assistência, dificuldade |
| Hollow Knight | exploração, identidade dos biomas, gating, boss readability |
| Hades | loop roguelite, feedback de combate, UI e caracterização |
| Dead Cells | animação responsiva, procedural pacing, variedade de armas |
| Cuphead | silhuetas, poses, animação e telegraph de bosses |
| Ori | composição, iluminação, profundidade e movimento |
| Minecraft | legibilidade de sistemas, construção, procedural/world exploration |
| Terraria | progressão por equipamentos/biomas e densidade de conteúdo |
| Factorio | loops de automação, UX de informação, simulação sistêmica |
| Stardew Valley | rotina, economia, feedback, UI e progressão |
| Portal 2 | tutorialização, linguagem espacial e puzzles |
| Half-Life 2 | encontros, ritmo e leitura de objetivos |
| Doom | combate agressivo, recursos e feedback |
| Dark Souls / Elden Ring | checkpoints, risco, telegraphs, world/encounter design |
| God of War | câmera, coreografia, feedback e transições |
| The Last of Us | narrativa ambiental, áudio, animação e pacing |
| Control | materiais, VFX, composição e iluminação |
| Resident Evil | tensão, recursos, câmera e level pacing |

Observação do jogo ≠ prova de como foi programado. Para falar de implementação interna, exija entrevista/palestra/artigo de desenvolvedor, cite fonte e grau de certeza. Não copiar assets, personagens ou expressões artísticas.

## Como pesquisar sem gastar contexto
Pergunta concreta → fonte primária → uma fonte profissional independente → hipótese aplicável à Godot → experimento em mini cena → evidência → KB. Se não houver evidência, marcar `hypothesis`, não `fact`.

## Atualização e revisão
Estas fontes são ponto de partida, **não alegação de que todas foram lidas integralmente**. Registrar URL específica e data de verificação quando um módulo afirmar detalhes de API ou produção.
