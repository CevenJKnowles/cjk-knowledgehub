#!/usr/bin/env bash

ROOT="$(pwd)"
DATE="$(date +%Y-%m-%d)"

add_header() {
  local file="$1"

  # Skip if file already has YAML frontmatter
  if head -n 1 "$file" | grep -q "^---"; then
    echo "Skipping (already has YAML): $file"
    return
  fi

  # Determine course based on path
  local course=""
  local course_id=""
  if [[ "$file" == *"course-1-prompt-engineering-for-chatgpt"* ]]; then
    course="Prompt Engineering for ChatGPT"
    course_id="course_1"
  elif [[ "$file" == *"course-2-chatgpt-advanced-data-analysis"* ]]; then
    course="ChatGPT Advanced Data Analysis"
    course_id="course_2"
  elif [[ "$file" == *"course-3-trustworthy-generative-ai"* ]]; then
    course="Trustworthy Generative AI"
    course_id="course_3"
  else
    course="Vanderbilt Prompt Engineering Series"
    course_id="course_unknown"
  fi

  # Determine module from folder name like module-3-prompt-patterns-i
  local module="0"
  if [[ "$file" =~ module-([0-9]+)- ]]; then
    module="${BASH_REMATCH[1]}"
  fi

  # Determine type from filename
  local base
  base="$(basename "$file")"
  local type="note"
  case "$base" in
    coursework.md)          type="coursework" ;;
    prompts.md)             type="prompts" ;;
    sandbox.md)             type="sandbox" ;;
    tests.md)               type="tests" ;;
    cheatsheets.md)         type="cheatsheet" ;;
    patterns.md)            type="reference" ;;
    syllabus.md)            type="syllabus" ;;
    course-notes-global.md) type="overview" ;;
    index.md)               type="index" ;;
  esac

  # Simple title from filename
  local title
  title="$(echo "$base" | sed 's/\.md$//' | sed 's/-/ /g')"

  local tmp
  tmp="$(mktemp)"

  cat <<HEADER > "$tmp"
---
title: $title
author: Ceven Jupiter Knowles
course: $course
course_series: Vanderbilt Prompt Engineering Specialization
course_id: $course_id
module: $module
type: $type
date: $DATE
updated: $DATE
tags: [PromptEngineering, AIEngineering, $course_id, module_$module, $type, Vanderbilt, Coursera]
description: >
  Auto-generated metadata for $title.
---
HEADER

  cat "$file" >> "$tmp"
  mv "$tmp" "$file"

  echo "Added YAML to: $file"
}

export DATE
export -f add_header

# Find all .md files under this directory and add headers
find "$ROOT" -name "*.md" -print0 | while IFS= read -r -d '' f; do
  add_header "$f"
done
