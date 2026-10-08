---
title: "High-Definition Color ASCII — Art Production"
domain: visual
tags: [ascii, glyph, color, jrpg, characters, environment, animation]
source_urls:
  - https://docs.godotengine.org/en/stable/classes/class_multimesh.html
  - https://docs.godotengine.org/en/stable/tutorials/shaders/shader_reference/canvas_item_shader.html
source_type: official-plus-derived
source_priority: P1-D
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: medium-high
token_budget: 1400
status: specialized
---

# Quando usar
Somente quando o projeto pedir ASCII nativo/glifos (não assumir ASCII para qualquer game). Use junto a `knowledge/godot/ascii_native_rendering.md` para tecnologia; este arquivo é sobre QUALIDADE ARTÍSTICA.

# Princípio
ASCII nativo de alta definição não é transformar uma textura ruidosa em 3 tons. A fonte visual deve ter **design**: silhueta, cores, volumes e texturas. Depois o conversor escolhe glifos para representar essa fonte. Fonte ruim + conversor = ASCII ruim.

# Pipeline de prova de qualidade
1. Escolha um personagem, uma árvore, um piso/caminho e um efeito de magia **representativos**.
2. Produza/edite arte-fonte (raster/vector/layers) com shapes, materiais e cores definidos. Fonte provisória pode ser SVG exportado offline, mas primitivas geométricas sem design não passam.
3. Converta offline para ASCIIFrame; não aplicar shader fullscreen.
4. Gere simultaneamente 3 níveis de densidade e compare no **tamanho real de exibição**, mais inspeção ampliada para confirmar glifos.
5. Compare fonte x ASCII: identidade, proporção, silhueta, matizes, luminância, bordas, sombra, transparência.
6. Ajuste a fonte OU o matcher conforme falha; não corrigir perda de silhueta só aumentando saturação.
7. Só depois anime e multiplique assets.

# Seletor de glifo
Rampa por brilho isolada é protótipo. Descritores opcionais:
- percentual de tinta/cobertura;
- direção e intensidade do gradiente;
- massa/célula 3x3 ou 4x4;
- centroide/ocupação;
- correspondência de bordas/traços.
Use pesos ajustáveis por material e tamanho. Não afirme que algoritmo complexo é obrigatório: compare melhoria antes/depois.

# Cor/forma
- RGBA por glifo; preserve várias famílias de matiz no mesmo personagem/material.
- **Não limite a paleta a ciano/verde escuro** se brief for JRPG vibrante.
- Preserve leitura cromática entre herói/terreno/efeito.
- Evite glifos muito pequenos que se tornam apenas linhas/ruído na escala nativa.
- Não use densidade alta em toda a tela como substituto de detalhe desenhado.
- Mipmaps/filtragem/atlas/padding devem ser avaliados em resolução final, inclusive 1x e 2x; ajuste se glifos desaparecem ou desfocam.

# Mundo
- Background: grandes regiões/materiais com variação espacial, não uma malha `;;;;...` uniforme.
- Chunks com caminhos orgânicos, árvores com copa/tronco, chão com patches e objetos reconhecíveis.
- Personagens como ASCII objects com pivot e silhouettes fortes; contraste maior que ambiente.
- Battles: personagens ampliados/detalhados; poses/frames individuais, não um único asset escalado 4x.
- UI pode ser fonte normal se brief permitir; HUD não pode ser a principal forma de identificar player.

# Animação
Use quadros offline coerentes + transform suave. Preserve pivot e volumes. Ataque tem anticipation/contact/recovery; magia usa glifos com direção e timing legíveis.

# Diagnóstico de falhas recorrentes
- "parece radar/terminal" → reduzir grade linear, texto repetido, excesso de ciano, hierarquia uniforme; redesenhar terrenos/objetos com materiais e paletas.
- "parece ruído" → aumentar tamanhos de massa, reduzir glifos nas áreas de repouso, reforçar contorno/identidade.
- "personagens só manchas" → refazer source art/proporção, melhorar cobertura/direção, aumentar tamanho de apresentação.
- "muito escuro" → recuperar valores médios, acentos luminosos funcionais e cor local antes de glow.
- "lindo só em zoom" → falhou; reavaliar no tamanho real.

# Gate ASCII art
Sem passar:
1. herói reconhecível SEM HUD;
2. floresta/rua/caverna reconhecíveis SEM título;
3. pelo menos 3 materiais distinguíveis;
4. cores correspondem ao brief;
5. 1 animação legível no runtime;
6. glifos reais e desempenho testados.
Não expandir conteúdo.
