---
allowed-tools: Bash(git checkout --branch:*), Bash(git add:*), Bash(git status:*), Bash(git push:*), Bash(git commit:*), Bash(gh pr create:*)
description: Commit, push, and open a PR
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

Based on the above changes:

1. Create a new branch if on main.
2. Stage relevant files by name — avoid `git add -A` or `git add .`.
3. Create a single commit following the Conventional Commits 1.0.0 specification. Use a HEREDOC for the commit message.
4. Push the branch to origin.
5. Create a pull request using `gh pr create`. The PR title **must** also follow Conventional Commits format (e.g., `feat(auth): add OAuth2 support`).

- Never amend a previous commit unless explicitly asked.
- Never skip hooks (`--no-verify`) unless explicitly asked.
- Do not commit files that likely contain secrets (`.env`, credentials, keys).

You have the capability to call multiple tools in a single response. You MUST do all of the above in a single message. Do not use any other tools or do anything else. Do not send any other text or messages besides these tool calls.
