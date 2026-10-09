# ART_DIRECTION v0.1 — Pixel Art Isométrica Detalhada, Levemente Dark

**CONFIRMADO PELO USUÁRIO:** jogo **2D isométrico**, **Pixel Art**, **bem detalhado**, com clima **um pouco dark**. A estética é mais sombria, mas **não totalmente escura**. RPG, sobrevivência, construção e combate em tempo real já constam no GDD.

**Ainda indefinido (TBD):** ambientação/época, fantasia ou não, personagem, espécies, referências estéticas específicas, paleta exata, resolução base, escala de pixel, tamanho de tiles, controles de câmera, biomas e pipeline de assets.

## Objetivo visual
Mundo com volume, materiais reconhecíveis, textura de pixel intencional e uma atmosfera levemente sombria. O detalhamento deve sustentar **um lugar vivo e construível**, sem virar excesso de ruído nem prejudicar leitura rápida de inimigos, recursos, estruturas, HUD e ataques.

## Visual Contract — MUST-HAVE (derivado das escolhas do usuário)
1. **Pixel Art genuína:** bordas e detalhes desenhados em pixels definidos, sem alisamento que apague a estrutura do pixel.
2. **2D isométrico consistente:** cenário, objetos, personagens e estruturas com projeção/escala/coordenadas/pivôs coerentes.
3. **Alto detalhamento intencional:** materiais distintos em solo, vegetação, construção e personagem; clusters controlados, silhuetas claras.
4. **Dark moderado:** sombras, contraste e luz local criam clima, mas cenas de exploração e combate permanecem compreensíveis.
5. **Hierarquia de leitura:** jogador, recursos, construção posicionável, inimigo e telegraph sobressaem quando relevantes.
6. **Consistência em movimento:** sprites de ações/combate, efeitos e posicionamento preservam escala e linguagem gráfica.
7. **Cenário orgânico:** um ponto focal memorável, grupos de elementos naturais, variação de textura, áreas de descanso e trajetos legíveis.

## MUST-NOT
1. Não transformar “um pouco dark” em preto quase absoluto, visual monocromático ou ausência de cores.
2. Não usar 3D como implementação visual padrão nem trocar a perspectiva por top-down ortográfico comum.
3. Não misturar pixel sizes discrepantes ou aplicar blur, anti-aliasing e zoom que borrem pixels sem aprovação explícita.
4. Não confundir detalhamento com ruído uniforme no chão/cenário; evitar textura repetida e grades técnicas aparentes.
5. Não produzir personagem/inimigo genérico como círculo/bloco sem trabalho de silhueta/material, nem confundir placeholders com arte final.
6. Não esconder ataque, loot, recursos ou caminhos sob sombras/folhagem/efeitos de iluminação.
7. Não assumir tema “dark fantasy medieval”, terror, sangue, necromancia, néon ou qualquer universo não escolhido pelo usuário.

## Recomendações de direção (PROPOSTAS, não decisões fechadas)
- **Luz e valor:** sombras frias e iluminação pontual mais quente podem funcionar, mas paleta exata depende da ambientação. Reservar os maiores contrastes às decisões do jogador.
- **Detalhamento:** usar microdetalhes em objetos focais; menos detalhe no chão sob combates e áreas de interface espacial.
- **Materiais:** bordas de pedras, veios de madeira, folhas, rachaduras e sombras de contato como exemplos de tratamento — escolher assets após definir ambiente.
- **Profundidade:** ordenar sprites pelo ponto de contato com o chão, tornar oclusão controlável e manter interações legíveis.
- **Animação:** expressividade na pose, timing e frame de impacto sem depender só de flashes/partículas.
- **Pipeline:** testar nearest-neighbor e zoom/scale adequados à resolução base, escolhidos após validação no Godot exato.

## Cena representativa para prova visual (PROPOSTA)
**Um único recorte isométrico do primeiro mapa** com personagem, 1–2 objetos de coleta, uma construção de teste e uma ameaça de combate. Capturar **dia/tarde** e **noite** para provar que o clima dark não sacrifica leitura.

### Entregáveis propostos do artista
1. Mini moodboard com **princípios** (sem copiar assets de jogos específicos), identidade e anti-referências.
2. Um concept frame do mapa no tamanho real do jogo e escala isométrica escolhida.
3. Sprite de personagem e um prop estruturado, com arte-fonte editável e escala coerente; animação representativa após aprovação.
4. Captura gameplay in-engine, screenshot comparável sem HUD e screenshot em combate.
5. Relatório de target fit, asset quality, readability, motion/VFX e compatibilidade técnica. **Nenhum deles foi produzido ou testado nesta etapa documental.**

## Gate visual
- Target fit >=3/4, asset quality >=3/4, readability >=3/4 (rubrica da KB); nenhuma violação MUST-NOT.
- Jogador, recursos, ameaça, área de construção e antecipação de ataque reconhecíveis em 3 segundos na resolução-alvo.
- Grayscale e thumbnail não eliminam a hierarquia; em noite escura, gameplay continua inteligível.
- Pixel boundaries e nitidez sobrevivem ao zoom pretendido.
- Comparação BEFORE/AFTER e revisão por QA/Guardião com evidências reais, não autoaprovação.

## Próximas decisões
1. **Ambientação narrativa:** medieval fantástico, mundo natural, pós-apocalíptico, outro? **TBD**.
2. **Paleta e temperatura**, quantidade de luz, cores de materiais e do personagem. **TBD**.
3. **Escala/pixel density:** tamanho base do sprite/personagem, tiles, render scale, zoom e aspect. **TBD**.
4. **Referências visuais específicas** e proibições adicionais do usuário. **TBD**.

## Fontes da base Agentes-Game
- `../../knowledge/visual/art_direction.md`: coerência entre emoção, paleta, valores e materiais.
- `../../knowledge/visual/visual_contract.md`: must-have / must-not e gate visual.
- `../../knowledge/visual/environment_art_production.md`: massas e clusters, não ruido uniforme.
- `../../knowledge/visual/visual_validation_lab.md`: crítica por captura e rubrica.
- `../../STUDIO_WORKFLOW.md`: exemplar visual antes de multiplicar assets.

**Status:** documento de direção, sem assets criados, sem execução de Godot.
