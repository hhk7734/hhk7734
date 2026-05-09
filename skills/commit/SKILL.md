---
name: commit
description: Use when the user asks to create git commits, run /commit, commit current changes, generate commit messages, or split changed files into focused Conventional Commits without pushing.
---

# Commit

Create focused git commits from the current working tree.

## Workflow

1. Inspect the repository state before staging anything:
   - `git status --short`
   - `git diff --stat HEAD`
   - `git diff HEAD`
   - `git log --oneline -10`
2. Decide whether the changes are one logical commit or multiple independent commits. Split unrelated features, fixes, refactors, docs, config, and generated artifacts when they can stand alone.
3. Do not commit files that likely contain secrets, credentials, private keys, tokens, or local-only environment values.
4. Stage files explicitly by path. Do not use `git add .` or `git add -A`.
5. Commit each logical group with a Conventional Commit message and a heredoc:

   ```sh
   git commit -F - <<'EOF'
   type(scope): concise imperative summary

   Optional body explaining why the change exists.
   EOF
   ```

6. After committing, report the commit hash and final `git status --short`.

## Commit Message Rules

- Use Conventional Commits 1.0.0.
- Allowed types: `feat`, `fix`, `docs`, `style`, `refactor`, `test`, `chore`.
- Use a single optional scope, not comma-separated scopes.
- Keep the subject imperative, lowercase after the type prefix, and without a trailing period.
- For breaking changes, put `!` after the type or scope, for example `feat(api)!: remove deprecated endpoint`.
- Prefer the subject to explain the user-facing or maintenance reason, not just the file operation.
- Add a body only when the reason, tradeoff, or migration detail is not obvious.
- Use footers for `BREAKING CHANGE`, `Refs`, or `Closes` when applicable.

## Guardrails

- Never amend an existing commit unless the user explicitly asks.
- Never skip hooks with `--no-verify` unless the user explicitly asks.
- Never push or create a pull request; use `commit-push-pr` for publishing.
- If there are no changes to commit, say so and do not create an empty commit.
