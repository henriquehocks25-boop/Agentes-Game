---
title: "Regression Checkpoints"
domain: qa
tags: [regression, checkpoint, vertical-slice]
source_urls: []
source_type: inference
source_priority: D
last_verified: 2026-10-07
confidence: high
token_budget: 550
status: stable
---

# Checkpoints
- core loop playable;
- vertical slice;
- content complete;
- pre-polish;
- release candidate.

# Em cada checkpoint
- smoke;
- critical systems;
- save compatibility;
- input;
- target resolutions;
- performance sample;
- visual consistency;
- known issues.

# Regra
Não rodar full regression após cada microdiff. Escolha suíte proporcional ao risco e amplie nos checkpoints.
