# Benchmark — Artista: JRPG ASCII Colorido

## Contexto
Um JRPG Godot com renderer de glifos nativos já funciona. Screenshot atual:
- chão ciano escuro coberto por pontos/linhas repetidos;
- caminhos são faixas retas horizontais;
- árvores minúsculas com silhueta frágil;
- personagens só pequenas massas de pontos, difíceis de reconhecer;
- HUD largo com aparência técnica;
- cores muito próximas, falta caráter de fantasia e de JRPG clássico.

## Objetivo do teste
Corrigir A DIREÇÃO E A QUALIDADE DA ARTE, não apenas compilar, recolorir ou adicionar partículas.

## Brief
- JRPG fantástico 16/32-bit em estrutura e atmosfera, sem copiar jogos;
- ASCII nativo de alta densidade, RGBA por glifo, sem filtro de framebuffer;
- mundo **rico, colorido, vibrante e orgânico**;
- heroína/herói legível com cabeça, roupa, cabelo, arma, pose;
- árvore com tronco e copa, chão em massas variadas, caminho natural;
- elementos de combate/objetivos mais legíveis que o background;
- UI de JRPG funcional, não terminal de engenharia.

## Restrições
Preserve battle logic, colisões e sistema de dados ASCII.
Trabalhe primeiro em UMA cena representativa e UM herói; não gere mais biomas.
Não suponha ferramenta de geração de imagem habilitada.
Não chame sprites vetoriais normais em runtime de ASCII nativo.

## Gate e entregas
1. Inspeção real das ferramentas/arquivos e screenshot BEFORE.
2. Visual Contract e escolha justificada do pipeline de arte.
3. 2–3 silhuetas/thumbnails, uma direção escolhida.
4. Um asset-herói original com fonte autoral e export.
5. Uma árvore/segmento de chão/caminho, com material/forma identificáveis.
6. Imagem BEFORE/AFTER de 1x, amostra de ataque/animação e inspeção de glifos em zoom.
7. Reviewer independente com target-fit, asset quality e readability.
8. Testes de gameplay de regressão.
9. Problemas residuais, incluindo limites de ferramenta.
10. Não expandir para múltiplos biomas com nota <3 nos três eixos.

## Reprovação direta
- somente mudança de paleta mantendo grid/noise;
- falta de desenho da forma;
- personagem indistinto sem HUD;
- apenas glow e efeitos;
- gerar cinco cenários ruins antes do primeiro bom;
- não executar Godot/render;
- declarar concluído por screenshots não inspecionadas;
- relatório com nota alta sem apontar evidência concreta.

## Resultado de benchmark
Relatar PASSOU, PASSOU COM RESSALVAS ou FALHOU com links para imagens/arquivos, ambiente, métodos de arte usados, módulos KB carregados, skills externas, números de iterações e correções de maior impacto.
