---
allowed-tools: Bash(git add:*), Bash(git status:*), Bash(git commit:*)
description: Create a git commit
---

## Context

- Current git status: !`git status`
- Current git diff (staged and unstaged changes): !`git diff HEAD`
- Current branch: !`git branch --show-current`
- Recent commits: !`git log --oneline -10`

## Conventional Commits Format

```
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```

**Types**: `feat`, `fix`, `docs`, `style`, `refactor`, `perf`, `test`, `build`, `ci`, `chore`

- **scope**: Optional noun describing the affected section (e.g., `parser`, `api`, `auth`).
- **description**: Imperative, lowercase, no period at the end. Focus on "why" over "what."
- **body**: Include when the "why" needs more context.
- **footer**: Use for `BREAKING CHANGE`, `Refs`, `Closes`, etc.
- **Breaking changes**: Append `!` after type/scope (e.g., `feat!: remove deprecated API`).

## Your task

Based on the above changes, create a single git commit following the Conventional Commits 1.0.0 specification.

- Stage relevant files by name — avoid `git add -A` or `git add .`.
- Use a HEREDOC for the commit message.
- Never amend a previous commit unless explicitly asked.
- Never skip hooks (`--no-verify`) unless explicitly asked.
- Do not commit files that likely contain secrets (`.env`, credentials, keys).

You have the capability to call multiple tools in a single response. Stage and create the commit using a single message. Do not use any other tools or do anything else. Do not send any other text or messages besides these tool calls.
