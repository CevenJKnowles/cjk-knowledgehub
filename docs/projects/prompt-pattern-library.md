---
id: KH-PROJ-PPL
title: Prompt Pattern Library
type: page
status: draft
version: "0.3"
created: 2026-03-22
updated: 2026-03-22
provenance: human
scope: [knowledgehub]
tags: [projects, prompt-pattern-library, taxonomy, content]
related: [KH-013]
ref: []
repo: [cjk-knowledgehub, prompt-pattern-library]
---

# Prompt Pattern Library

A canonical taxonomy and atomic pattern library for structured prompt
engineering: prompts that are reliable across platforms, modular,
versatile, and documented well enough to know where they work and
where they may produce errors.

---

## What it is

The Prompt Pattern Library is a classification system for prompt patterns:
a three-level hierarchy of domains, categories, and subcategories that
covers the full space of atomic prompt transformation primitives. Each
pattern is documented with intent, constraints, compatibility rules,
failure modes, and evaluation criteria in a consistent YAML and Markdown
schema designed for long-term versioning and cross-referential use.

---

## Taxonomy structure

The library defines 18 primary domains covering instruction and control,
context provision, reasoning and deliberation, output structuring,
evaluation, verification, safety and ethics, failure modes, and
meta-system control, among others.

The three-level structure -- Domain, Category, Subcategory -- was reviewed
independently by four external models and assessed as structurally sound,
comprehensive, and suitable as a canonical reference.

**Taxonomy v1.0 is locked.** Stable, canonical, and cleared for Phase 2.

---

## Pattern schema

Each atomic pattern is documented in a consistent schema covering summary,
intent, use conditions, constraints, compatibility, anti-patterns, canonical
examples, and governance notes. The schema supports focused authoring,
predictable navigation, Git-based review, and static publishing.

---

## Status

Phase 1 (Taxonomy and Schema) is complete and locked. Phase 2 (Atomic
Pattern Definition) is the active next phase, currently paused while
IO-III Phase 4 is active.

---

## Links

[GitHub :material-arrow-right:](https://github.com/CevenJKnowles/prompt-pattern-library)