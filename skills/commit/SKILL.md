---
name: commit
description: Create a git commit following the Conventional Commits 1.0.0 specification. Use when the user asks to "commit", "create a commit", "commit changes", or invokes /commit. Analyzes staged/unstaged changes and generates a well-structured commit message.
---

# Commit

Create git commits following the [Conventional Commits 1.0.0](https://www.conventionalcommits.org/en/v1.0.0/) specification.

## Commit Message Format

```
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```

## Types

| Type       | Purpose                                       | SemVer |
| :--------- | :-------------------------------------------- | :----- |
| `feat`     | New feature                                   | MINOR  |
| `fix`      | Bug fix                                       | PATCH  |
| `docs`     | Documentation only                            | -      |
| `style`    | Formatting, no code change                    | -      |
| `refactor` | Neither fix nor feature                       | -      |
| `perf`     | Performance improvement                       | -      |
| `test`     | Adding or correcting tests                    | -      |
| `build`    | Build system or external dependencies         | -      |
| `ci`       | CI configuration                              | -      |
| `chore`    | Other changes not modifying src or test files | -      |

## Breaking Changes

Indicate breaking changes by either:

- Appending `!` after type/scope: `feat!: remove deprecated API`
- Adding a footer: `BREAKING CHANGE: description`

Both map to a MAJOR version bump.

## Workflow

1. Run `git status` and `git diff --staged` (and `git diff` for unstaged) to understand all changes.
2. Run `git log --oneline -10` to check the repository's recent commit style.
3. Analyze the changes and determine the appropriate type, scope, and description.
4. Draft the commit message:
   - **type**: Pick from the table above based on the nature of the change.
   - **scope**: Optional. A noun describing the affected section (e.g., `parser`, `api`, `auth`).
   - **description**: Imperative, lowercase, no period at the end. Focus on "why" over "what."
   - **body**: Include when the "why" needs more context. Separate from description with a blank line.
   - **footer**: Use for `BREAKING CHANGE`, `Refs`, `Closes`, `Co-Authored-By`, etc.
5. Stage relevant files by name — avoid `git add -A` or `git add .`.
6. Create the commit using a HEREDOC for proper formatting:

```bash
git commit -m "$(cat <<'EOF'
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
EOF
)"
```

7. Run `git status` after commit to verify success.

## Rules

- Never amend a previous commit unless explicitly asked.
- Never push unless explicitly asked.
- Never skip hooks (`--no-verify`) unless explicitly asked.
- If a pre-commit hook fails, fix the issue, re-stage, and create a **new** commit.
- Do not commit files that likely contain secrets (`.env`, credentials, keys). Warn the user if they request it.
