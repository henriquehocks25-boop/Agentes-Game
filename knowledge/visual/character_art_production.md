---
title: "Character and Creature Art Production"
domain: visual
tags: [characters, silhouettes, creatures, sprites, jrpg, animation, anatomy]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/2d/2d_sprite_animation.html
source_type: official-plus-derived
source_priority: P1-D
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: medium-high
token_budget: 1150
status: stable
---

# Quando consultar
Player, NPCs, party, inimigos, chefes, sprites animados e qualquer reclamação de "personagens genéricos".

# Design antes do renderer
Defina função, personalidade visual, altura relativa e 3 traços identificáveis. Faça pelo menos duas silhuetas distintas; escolha por leitura em tamanho final. Diferencie por PROPORÇÃO e ACESSÓRIOS, não só cor.

# Hierarquia de massas
1. Corpo e pose/linha de ação.
2. Silhueta: cabeça/cabelo/chapéu, ombros, tronco, arma, capa, pernas.
3. Massas de cor por peça de roupa/material.
4. Valor e iluminação que descrevem volume.
5. Detalhes identitários (rosto, emblema, costuras, metal).
6. Contorno/oclusão e acabamento adequados ao estilo.

Evite bonecos de palito, cápsulas com duas pernas, círculos com olhos e recolor de uma mesma forma como arte final, salvo se deliberadamente pedido. Personagem não deve depender de uma legenda.

# JRPG clássico
- Na exploração, proporções estilizadas e leitura prioritária a 1x.
- Na batalha, representação mais expressiva e detalhada, preservando cabelo, traje, paleta e identidade.
- Heróis: silhueta e identidade próprias; herói principal é reconhecível pela arma/roupa/pose.
- Inimigos: formas base e padrões de movimento próprios; boss precisa de escala e composição.
- Party: materiais e hierarquia tonal consistentes; papéis reconhecíveis mesmo em grayscale por shape.

# Animação
Crie poses distintas para key frames: idle, anticipation, contact, recovery, hit, defeat. Não chame de animação rica um sprite parado sendo deslocado ou rotacionado.
Garanta:
- pivot e escala consistentes;
- pés/grounding estáveis;
- direção/flip sem perder arma/gesto;
- timing guiado pelo evento de gameplay;
- sombras de contato.
Godot: AnimatedSprite2D/SpriteFrames ou AnimationPlayer quando apropriado; renderer ASCII: frames de glifos pré-convertidos.

# Testes visuais
- avatar em escala de exploração e escala de batalha;
- preto sólido/silhueta;
- grayscale;
- fundo claro e fundo escuro;
- idle + attack em movimento;
- oclusão por efeito/ambiente.

# Critério de aceite
O observador reconhece papel, pose e ação em tamanho final sem ler nome/HUD. Se não, corrigir proporção/pose/contraste antes de microdetalhe.
