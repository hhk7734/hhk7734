---
name: release
description: Use when publishing this agent-skills repository, bumping synchronized Codex, Claude, and Gemini extension versions, creating the release commit, or pushing the release to GitHub.
---

# Release

## Overview

Publish this repository as an agent-skills release. Keep all extension metadata versions synchronized, verify the repository state, commit the release intentionally, and push only the intended changes.

## Skill Source Of Truth

`plugins/hhk7734/skills` is the source of truth for packaged skills. The top-level `skills` directory is the generated Gemini skill directory and must not overwrite the plugin skill directory during release work.

## Version Rules

This project uses [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) and SemVer. Releases are committed as `chore(release): bump extension version to x.y.z` on `main` — no tags are produced.

Compute the bump from the Conventional Commit types of every commit between the last release commit and `HEAD`, and apply the **largest** bump that matches:

| Commit type                                         | Bump  |
| --------------------------------------------------- | ----- |
| `fix`, `refactor`, `style`, `chore`, `docs`, `test` | patch |
| `feat`                                              | minor |
| `!` (breaking change)                               | major |

An explicit version supplied by the user always overrides the computed bump.

## Workflow

1. Inspect state before changing anything:

   ```sh
   git status --short
   git branch --show-current
   git remote -v
   git log --oneline -10
   ```

2. Determine the target version.
   - If the user provides a version, use that exact SemVer value.
   - Otherwise, list commits since the last release commit and apply the rule from the Version Rules section above:

     ```sh
     LAST_RELEASE=$(git log --grep='^chore(release):' -n 1 --pretty=format:%H)
     git log "$LAST_RELEASE..HEAD" --oneline
     ```

     Present the commit-type breakdown and the recommended next version, and wait for confirmation or an override before editing files.

   - Keep these files at the same version:
     - `plugins/hhk7734/.codex-plugin/plugin.json`
     - `plugins/hhk7734/.claude-plugin/plugin.json`
     - `.claude-plugin/marketplace.json` under `metadata.version`
     - `gemini-extension.json`

3. Edit only the release metadata, canonical files under `plugins/hhk7734/skills`, and any explicitly requested release notes or generated artifacts. Do not move skill directories or reformat unrelated JSON.

4. Check whether the generated Gemini skill directory has drifted from the canonical plugin skills:

   ```sh
   diff -qr plugins/hhk7734/skills skills
   ```

   If it differs, refresh only the Gemini skill directory from the source of truth before validating:

   ```sh
   rm -rf skills
   cp -a plugins/hhk7734/skills skills
   ```

   Never copy `skills` back into `plugins/hhk7734/skills`.

5. Validate before committing:

   ```sh
   jq . plugins/hhk7734/.codex-plugin/plugin.json plugins/hhk7734/.claude-plugin/plugin.json .claude-plugin/marketplace.json gemini-extension.json >/dev/null
   rg --hidden -n '"version"\s*:\s*"' --glob '!/.git/**' --glob '!/.tmp/**' .
   git diff --check
   git diff --stat HEAD
   git diff HEAD
   ```

   Confirm the only version fields that changed are the intended release metadata fields unless the user explicitly requested more.

6. Stage explicit paths. Never use `git add .` or `git add -A`.

7. Commit with a Conventional Commit message:

   ```sh
   git commit -F - <<'EOF'
   chore(release): bump extension version to x.y.z
   EOF
   ```

8. Push only after the commit succeeds and the user asked for a release or publish flow:

   ```sh
   git status --short
   git push origin HEAD
   ```

9. Report the version, commit hash, push target, and final `git status --short`.

## Guardrails

- Do not create tags unless the user explicitly asks or the repository later establishes tag-based releases.
- Do not publish with uncommitted unrelated changes staged.
- Preserve user changes in the worktree; if unrelated edits already exist, stage only the release files.
- For direct main publish flows, include generated artifacts when relevant and inspect staged diffs for whitespace-only churn.
- If a validation command fails, fix the root cause before committing instead of bypassing the check.
