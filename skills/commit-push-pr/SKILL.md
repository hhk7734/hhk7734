---
name: commit-push-pr
description: Use when the user asks to run /commit-push-pr, commit current changes, push the branch, and open a GitHub pull request from the current repository.
---

# Commit Push PR

Commit the current changes, push the branch, and create a GitHub pull request.

## Workflow

1. Inspect repository state:
   - `git status --short`
   - `git branch --show-current`
   - `git remote -v`
   - `git log --oneline -10`
2. If on `main`, `master`, or `trunk`, create a new branch before committing. Use a short kebab-case branch name based on the dominant change.
3. Before committing, verify changed code complies with all applicable agent instruction files:
   - List every changed path that will be included in the commit, including modified, staged, deleted, renamed, and untracked files.
   - For each changed path, check for `AGENTS.md` and `CLAUDE.md` at the repository root and in every ancestor directory from the path's top-level directory down to the changed file's parent directory.
   - Read every applicable instruction file found along that path and verify the changed code follows those instructions before staging.
   - If an instruction conflict or compliance issue exists, fix it before continuing, or report the blocker instead of committing.
4. Commit changes using the same rules as the `commit` skill:
   - split independent changes into focused commits when appropriate
   - stage files explicitly by path
   - use Conventional Commits
   - use heredoc commit messages
   - avoid secret-like files
   - do not amend or skip hooks unless explicitly asked
5. Push the current branch:

   ```sh
   git push -u origin HEAD
   ```

6. Create the pull request with `gh pr create`.
   - The PR title must be a single Conventional Commit title.
   - If commit titles in the branch consistently use the same prefix, use that same prefix in the PR title.
   - For multiple commits, choose the dominant user-facing scope and type.
   - The PR body must include a short summary and a test plan.
7. Report the PR URL and final `git status --short`.

## PR Body Shape

Use this structure unless the repository has a stronger established template:

```md
## Summary
- ...
- ...

## Test Plan
- [ ] ...
```

## Guardrails

- If `gh` is unavailable or unauthenticated, commit and push if possible, then report the exact blocker.
- If no `origin` remote exists, stop before pushing and report the missing remote.
- Do not create a PR from `main`, `master`, or `trunk`; branch first.
- Do not create empty commits or empty pull requests.
