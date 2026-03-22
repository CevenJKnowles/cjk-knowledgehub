---
id: KH-PROJ-IO3
title: 10³ Architecture
type: page
status: draft
version: "0.2"
created: 2026-03-22
updated: 2026-03-22
provenance: human
scope: [knowledgehub]
tags: [projects, io-iii, architecture, governance, content]
related: [KH-013, KH-017]
ref: []
repo: [cjk-knowledgehub, io-architecture]
---

# 10³ Architecture

A governed LLM control-plane runtime. Where most LLM tooling is permissive
by default, 10³ is restrictive by design. The constraint is the feature.

---

## What it is

10³ Architecture is a local Python runtime that sits between you and a
language model and governs how that interaction behaves. Execution limits
are hard-coded. Content boundaries are enforced recursively. Every
structural decision is documented in an ADR before it is implemented.

The system knows what it will not do, and that refusal is structural
rather than conventional.

---

## Architecture principles

**Determinism first** -- all routing and execution behaviour is
predictable and reproducible. No dynamic routing. No autonomous behaviour.

**Bounded execution** -- all control flows have explicit limits. The
system rejects recursive or unbounded execution paths.

**Architecture before implementation** -- structural changes require an
ADR before code changes. The repository is the canonical source of truth.

**Governance by design** -- operational constraints are enforced
structurally in the runtime, not through convention.

---

## How it works

The runtime operates across three layers:

**Capability Layer** -- context is processed and governed before input
reaches the language model. Capabilities are registry-controlled,
explicitly declared, and single-execution only.

**Execution Engine** -- a fully deterministic pipeline operating under
hard-coded pass limits. Reproducible behaviour is a structural invariant,
not a goal.

**Challenger Layer** -- a structured audit prior to delivery, with a
bounded revision cycle and defined termination conditions. The system
does not iterate indefinitely.

---

## What it is not

10³ Architecture is not an agent framework, a dynamic tool orchestrator,
a workflow engine, or a recursive reasoning pipeline. These exclusions are
structural, not conventional.

---

## Status

| Phase | Description | Status |
|---|---|---|
| 1 | Control Plane | Stabilised |
| 2 | Structural Consolidation | Complete |
| 3 | Capability Layer | Complete |
| **4** | **Context Architecture Formalisation** | **Active** |
| *5* | *Runtime Observability and Optimisation* | *Planned* |
| *6* | *Memory Architecture* | *Planned* |

---

## Links

[GitHub :material-arrow-right:](https://github.com/CevenJKnowles/io-architecture)