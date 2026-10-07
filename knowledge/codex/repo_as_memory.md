---
title: "Repository as Memory"
domain: codex
tags: [repository, docs, memory, system-of-record]
source_urls:
  - https://openai.com/index/harness-engineering/
source_type: official
source_priority: P0
last_verified: 2026-10-07
confidence: high
token_budget: 550
status: stable
---

# Princípios
A OpenAI descreve o repositório e sua documentação estruturada como sistema de registro para agentes. Conversas são efêmeras; conhecimento durável deve ficar versionado e navegável.

# O que registrar
- arquitetura;
- contratos;
- decisões que afetam futuras mudanças;
- procedimentos de teste/build;
- limitações relevantes;
- specs e planos ativos.

# O que não registrar
- cada tentativa falha;
- logs temporários;
- explicações óbvias do código;
- duplicatas de documentação oficial.

# Regra
A documentação deve reduzir futuras buscas, não criar outra floresta impossível de navegar.
