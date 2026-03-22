---
id: KH-METHOD-HIW-DE
title: Wie ich arbeite
type: page
status: draft
version: "0.2"
created: 2026-03-22
updated: 2026-03-22
provenance: human
scope: [knowledgehub]
tags: [method, working-practice, systems, governance, adr, content, de]
related: [KH-013, KH-METHOD-ADR, KH-METHOD-ENV]
ref: []
repo: [cjk-knowledgehub]
---

# Wie ich arbeite

Eine Arbeitsweise hat sich über 26 Jahre und drei verschiedene Bereiche
hinweg bewährt: Grenzen definieren, bevor etwas gebaut wird, jede
strukturelle Entscheidung explizit machen und Constraints als Merkmale
behandeln, nicht als Hindernisse.

Letzteres ist entscheidend. Constraints, die anerkannt, aber nicht
durchgesetzt werden, sind keine Constraints: Sie sind Absichten. Der
Unterschied zeigt sich unter Druck, im grossen Massstab oder wenn etwas
Unerwartetes passiert. Strukturelle Integrität ist keine Eigenschaft
günstiger Bedingungen. Sie ist das, was man hat oder nicht hat, wenn die
Bedingungen aufhören, günstig zu sein.

In der Praxis bedeutet das: Jede Zusammenarbeit beginnt mit der
Bestimmung der Grenzen. Was ist im Scope, was nicht. Welche Entscheidungen
bereits getroffen wurden und nicht mehr zur Diskussion stehen, und was noch
offen ist. Jede wesentliche strukturelle Entscheidung wird schriftlich
festgehalten, bevor sie umgesetzt wird, nicht als nachträglicher Audit-Trail,
sondern weil das Aufschreiben einer Entscheidung eine Klarheit erzwingt, die
informelle Absprachen regelmässig verdecken. Wenn eine Entscheidung nicht
klar genug formuliert werden kann, um dokumentiert zu werden, ist sie nicht
klar genug getroffen worden, um umgesetzt zu werden.

Drift wird antizipiert, nicht reaktiv behandelt. Jedes System, das über
Zeit betrieben wird, weicht ohne aktive strukturelle Kontrollen von seiner
ursprünglichen Absicht ab. Das gilt für Software-Pipelines,
Produktions-Workflows und Organisationen gleichermassen. Die Antwort darauf
ist keine Wachsamkeit; sie ist Architektur. Stabilitätsanforderungen werden
eingebaut, nicht überwacht.

Diese Methode zeigt sich in der IO-III Architecture als Runtime, die auf
fest kodierten Ausführungslimits, registry-gesteuerten Capabilities und
einem ADR-first-Änderungsprozess aufbaut: keine strukturelle Änderung ohne
dokumentierte Entscheidungsbegründung. Sie zeigt sich in der Prompt Pattern
Library als gesperrte Taxonomie und konsistentes atomares Schema, das auf
langfristige Stabilität statt iterativer Bequemlichkeit ausgelegt ist. Und
sie zeigt sich in der Art, wie dieses KnowledgeHub selbst verwaltet wird:
Entscheidungen sind gesperrt, Quellen der Wahrheit sind explizit, und
Änderungen erfordern das Ablösen des bisherigen Eintrags statt seine
Überarbeitung.

Die Bereiche unterscheiden sich. Die Struktur nicht.
