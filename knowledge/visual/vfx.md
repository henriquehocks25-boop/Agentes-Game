---
title: "VFX for Gameplay"
domain: visual
tags: [vfx, impact, telegraph, particles]
source_urls:
  - https://docs.godotengine.org/en/stable/tutorials/3d/particles/creating_a_3d_particle_system.html
  - https://gdcvault.com/
source_type: official-plus-professional
source_priority: P1
godot_version: "4.x stable"
last_verified: 2026-10-07
confidence: high
token_budget: 850
status: stable
---

# Hierarquia
1. telegraph;
2. ação;
3. impacto;
4. aftermath.

# Princípios
Efeito deve explicar timing, direção e magnitude. GPUParticles processam comportamento na GPU e permitem compor draw passes, mas custo visual/overdraw ainda precisa ser medido.

# Padrões
- formas rápidas e claras no impacto;
- resíduos mais lentos;
- cores semânticas consistentes;
- lifetime proporcional;
- LOD/redução em plataformas fracas quando necessário.

# Anti-patterns
- efeito cobrir ameaça;
- partículas grandes demais;
- todos os eventos com mesmo flash;
- excesso de transparência/overdraw.
