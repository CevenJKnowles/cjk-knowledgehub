---
id: KH-METHOD-ADR
title: Architecture Decision Records
type: page
status: draft
version: "0.2"
created: 2026-03-22
updated: 2026-03-22
provenance: human
scope: [knowledgehub]
tags: [method, adr, governance, architecture, documentation, content]
related: [KH-013, KH-METHOD-HIW]
ref: []
repo: [cjk-knowledgehub, cjk-knowledgehub-governance, io-architecture]
---

# Architecture Decision Records

Every project accumulates decisions. Most of them go undocumented: made
in conversation, inferred from code, or simply forgotten. That works until
something breaks, or someone new needs to understand why the system behaves
the way it does, or you need to change something and cannot remember what
the original reasoning was. At that point, the cost of not writing things
down becomes visible.

An Architecture Decision Record is a short document that captures a
structural decision before it is implemented: what was decided, why, what
else was considered, and what consequences follow. The record comes before
the code. I write the decision down, check it against what already exists,
and only then move forward. This is not a heavy process. A single ADR is
rarely more than a page. The discipline is in the sequence, not the volume.

In practice, this means the io-architecture repository carries 10 ADRs
covering decisions from control plane selection through to context assembly,
audit gate design, and memory persistence policy. This KnowledgeHub has its
own governance repository where every significant structural choice, from
typography to bilingual support to information architecture, is documented
before it is implemented. The Prompt Pattern Library's locked taxonomy
exists under the same principle: the classification was settled and written
down before a single pattern was drafted against it.

The full ADR index for the IO-III Architecture project is on GitHub, as is
the governance repository for this KnowledgeHub.

[IO-III Architecture ADRs :material-arrow-right:](https://github.com/CevenJKnowles/io-architecture/tree/main/ADR)

[KnowledgeHub Governance :material-arrow-right:](https://github.com/CevenJKnowles/cjk-knowledgehub-governance)
