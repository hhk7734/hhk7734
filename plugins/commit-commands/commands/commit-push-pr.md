---
allowed-tools: Skill, Bash(git checkout --branch:*), Bash(git status:*), Bash(git push:*), Bash(gh pr create:*)
description: Commit, push, and open a PR
---

## Context

- Current branch: !`git branch --show-current`
- Recent commits: !`git log --oneline -10`

## Your task

1. Create a new branch if on main.
2. Invoke the `/commit-commands:commit` skill to commit changes.
3. Push the branch to origin.
4. Create a pull request using `gh pr create`. The PR title **must** follow Conventional Commits format (e.g., `feat(auth): add OAuth2 support`).

You MUST do all of the above in order. Do not use any other tools or do anything else. Do not send any other text or messages besides these tool calls.
