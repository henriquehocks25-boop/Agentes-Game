# Sources Index

## Classificação
- **P0 — Primária oficial:** documentação oficial, especificação, repositório oficial.
- **P1 — Primária profissional:** GDC, postmortem do próprio desenvolvedor/estúdio, paper original.
- **P2 — Secundária forte:** referência profissional reconhecida.
- **P3 — Comunidade:** fórum, Reddit, blog ou vídeo comunitário.
- **I — Inferência:** conclusão nossa derivada de fontes; não é fato diretamente declarado.

## OpenAI / Codex — P0
- Harness engineering: https://openai.com/index/harness-engineering/
  - Base para repo como system of record, `AGENTS.md` curto e documentação estruturada.
- Rethinking skills and prompts for GPT-6 Astra: https://developers.openai.com/blog/rethinking-skills-and-prompts-for-gpt-6-astra
  - Progressive disclosure; revisar instruções antigas e descrições de skills para evitar contexto inchado.
- Codex Prompting Guide: https://developers.openai.com/cookbook/examples/gpt-5/codex_prompting_guide
  - Comportamento de `AGENTS.md`, instruções hierárquicas e práticas de prompting.
- Unrolling the Codex agent loop: https://openai.com/index/unrolling-the-codex-agent-loop/
  - Compaction e gestão da janela de contexto.
- Prompt caching: https://developers.openai.com/api/docs/guides/prompt-caching
  - Somente para distinguir recursos da API de práticas gerais de Codex.
- How OpenAI uses Codex: https://openai.com/business/guides-and-resources/how-openai-uses-codex/

## Godot — P0
- Stable docs root: https://docs.godotengine.org/en/stable/
- Best practices: https://docs.godotengine.org/en/stable/tutorials/best_practices/index.html
- GDScript: https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/
- Signals: https://docs.godotengine.org/en/stable/getting_started/step_by_step/signals.html
- Autoloads vs regular nodes: https://docs.godotengine.org/en/stable/tutorials/best_practices/autoloads_versus_regular_nodes.html
- Shaders: https://docs.godotengine.org/en/stable/tutorials/shaders/index.html
- Navigation: https://docs.godotengine.org/en/stable/tutorials/navigation/index.html
- Debug: https://docs.godotengine.org/en/stable/tutorials/scripting/debug/index.html
- Environment/post-processing: https://docs.godotengine.org/en/stable/tutorials/3d/environment_and_post_processing.html
- Saving games: https://docs.godotengine.org/en/stable/tutorials/io/saving_games.html

## Game Design / Research — P1
- MDA paper: https://www.cs.northwestern.edu/~hunicke/MDA.pdf
- GDC Vault: https://gdcvault.com/
- Game Developer postmortems: https://www.gamedeveloper.com/keyword/postmortems
- Steamworks User Reviews: https://partner.steamgames.com/doc/store/reviews
- Steam User Reviews Web API: https://partner.steamgames.com/doc/webapi/IUserReviewsService

## Visual / Technical Art — P1/P0
- GDC Art Direction Bootcamp — Shape Language: https://gdcvault.com/play/1025897/Art-Direction-Bootcamp-Building-Worlds
- GDC Art Direction Bootcamp — Lighting: https://gdcvault.com/play/1023572/Art-Direction-Bootcamp-The-Future
- GDC Art Direction Bootcamp — Cinematography: https://gdcvault.com/play/1021807/Art-Direction-Bootcamp-Cinematography-for
- GDC Graphic Design Thinking: https://gdcvault.com/play/1023944/Art-Direction-Bootcamp-Graphic-Design
- Godot Environment/post-processing: https://docs.godotengine.org/en/stable/tutorials/3d/environment_and_post_processing.html
- Godot Shaders: https://docs.godotengine.org/en/stable/tutorials/shaders/index.html

## QA / Accessibility — P0/P1
- Godot Debug: https://docs.godotengine.org/en/stable/tutorials/scripting/debug/index.html
- Godot Debugger/Profiler: https://docs.godotengine.org/en/stable/tutorials/scripting/debug/debugger_panel.html
- Godot general optimization: https://docs.godotengine.org/en/stable/tutorials/performance/general_optimization.html
- Game Accessibility Guidelines: https://gameaccessibilityguidelines.com/full-list/
- GDC accessibility production mindset: https://gdcvault.com/play/1027290/UX-Summit-Approaching-Accessibility-in

## Regra de manutenção
Nunca copiar longos trechos das fontes. Registrar apenas princípios, condições, exceções, exemplos mínimos e links.
