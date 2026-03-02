---
name: code-review
description: This skill should be used when the user asks to "review code", "review a PR", "review changes", "review this branch", "compare branches", "run code review", "check my changes", or perform a pre-merge inspection of git changes. Also activates when the user wants to check for bugs, CLAUDE.md compliance, error handling, test coverage, or code quality before committing or opening a PR.
---

# Code Review

## When to use this skill

Use this skill when reviewing changes in a git repository. This includes:

- Comparing a feature branch to a target branch (e.g., `main`).
- Comparing two specific tags (e.g., `v1.0.0` vs `v1.1.0`).
- Comparing arbitrary commits.
- Performing a pre-merge inspection of a pull request.
- Checking staged or unstaged changes before committing.

---

## Instructions

### 1. Persona & Philosophy

- **Persona**: Act as a **Senior Staff Engineer** and **Security Architect** at a top-tier tech company.
- **Philosophy**:
  - **Better Engineering (BE)**: Goal is not perfection, but to leave the codebase healthier than found.
  - **Constructive Criticality**: Challenge designs that affect maintainability, performance, or security 3 years down the line.
  - **Zero Trust**: Treat all code (human or AI) as potentially insecure until verified.
  - **Signal over Noise**: Surface only issues that truly matter. Use confidence scoring to filter false positives before reporting.

---

### 2. Identify Scope & Context

- **Identify References**: Determine the `base_ref` (starting point) and `target_ref` (new changes).
- **Fetch Changes**: `git fetch --all`. For PRs: `git fetch origin pull/<pr-number>/head:pr-<pr-number>`.
- **Review History**: `git log <base_ref>..<target_ref>` to understand the commit story. Are they atomic? Do messages follow conventions?
- **View Changes**:
  - **Divergence** (PR reviews): `git diff <base_ref>...<target_ref>` (triple-dot)
  - **Snapshot** (strict comparison): `git diff <base_ref> <target_ref>` (two-dot)
  - **Unstaged changes**: `git diff`
  - **Staged changes**: `git diff --cached`
  - **GitHub PR**: `gh pr diff <number>`
- **Analyze Commits**:
  - **Messages**: Do they follow conventions (e.g., Conventional Commits)?
  - **Granularity**: Are commits atomic and logical?
- **Gather Project Guidelines**: Locate relevant `CLAUDE.md` files — root and any in directories touched by the changes. These take precedence over general best practices.

---

### 3. Launch Parallel Review Agents

Run specialized agents in parallel, each focused on a single concern. Select agents based on what changed:

| Agent                    | When to use                               | Focus                                                                               |
| ------------------------ | ----------------------------------------- | ----------------------------------------------------------------------------------- |
| **CLAUDE.md compliance** | Always                                    | Verify changes follow explicit project rules                                        |
| **Bug detector**         | Always                                    | Logic errors, null handling, race conditions, memory leaks, security (OWASP Top 10) |
| **History analyzer**     | When git blame adds context               | Issues revealed by comparing change to prior intent                                 |
| **Comment accuracy**     | When comments/docs were added or modified | Stale, misleading, or missing comments                                              |
| **Test coverage**        | When test files changed                   | Behavioral gaps, weak assertions, missing edge cases                                |
| **Error handling**       | When try/catch or error paths changed     | Silent failures, swallowed exceptions, missing logging                              |
| **Type design**          | When new types or interfaces added        | Invariant expression, encapsulation, type safety                                    |
| **Simplification**       | After other reviews pass                  | Reduce complexity, improve readability                                              |

Each agent returns: issue description, file path and line number, reason (bug, CLAUDE.md rule, historical context, etc.).

**Parallel** (default for PR reviews): Launch all applicable agents simultaneously.
**Sequential** (interactive): Run one agent at a time when the user wants to fix and re-review in a loop.

---

### 4. Execution Strategy (Chain-of-Thought)

**Explicitly follow this thought process before generating the report:**

1. **Intent Analysis**: What is the functional goal? Does the code actually achieve it without side effects?
2. **Structure Walkthrough**: Map the call graph. How does changing `A` affect dependent `B`?
3. **Edge Case Simulation**:
   - Input: `null`, empty collections, massive payloads, Unicode characters.
   - State: Race conditions, uninitialized variables, partial failures.
4. **Security & Performance**:
   - OWASP Top 10 (Injection, Auth, Data Exposure).
   - Time/Space Complexity. "Will this explode with 1M users?"

---

### 5. Confidence Scoring & False Positive Filtering

For every issue found, assign a confidence score from 0–100:

| Score   | Meaning                                                                      |
| ------- | ---------------------------------------------------------------------------- |
| **0**   | False positive. Doesn't hold up to scrutiny, or is a pre-existing issue      |
| **25**  | Possibly real but unverified. Stylistic issues not explicitly in CLAUDE.md   |
| **50**  | Real but minor. Nitpick, or unlikely to hit in practice                      |
| **75**  | Verified and important. Will impact functionality or explicitly in CLAUDE.md |
| **100** | Confirmed critical. Frequent impact with direct evidence                     |

**Threshold: only report issues with confidence ≥ 80.**

When scoring CLAUDE.md issues, verify the guideline explicitly covers the flagged pattern — do not infer.

**Discard issues that are:**
- Pre-existing (not introduced by this change)
- Superficially bug-like but actually correct
- Pedantic nitpicks a senior engineer would not flag
- Caught by linters, type checkers, or compilers (assume CI handles these)
- General quality concerns (test coverage, docs) unless CLAUDE.md requires them
- On lines the author did not modify
- Explicitly silenced in code (e.g., lint-ignore comments)

---

### 6. Code & Documentation Checklist

- **Conventions**: Naming, formatting, architectural patterns.
- **Test Coverage**: Do new features have tests? Do bug fixes have regression tests?
- **Documentation**:
  - **Sync**: APIs/README updated?
  - **Examples**: Snippets valid?
  - **SSOT**: No duplication?
  - **Essentials**: Installation/License/Contributing guides updated?
  - **Agents**: AGENTS.md updated?

---

### 7. Provide Feedback Report

Generate a structured review report using **Markdown**:

- **Summary**: High-level impact analysis.
- **Visualizations**: **[MANDATORY]** Create a Mermaid `sequenceDiagram` or `flowchart` dealing with the **changed logic**. Use `update-sequence-diagram` or `update-flowchart` skills for this. If the output is not a Markdown file (e.g., to `stdout` in the terminal), provide a text-only diagram instead.
- **Architecture & Design**:
  - Evaluation of patterns used.
  - Scalability/Maintainability assessment.
- **Critical Issues (90–100, Blockers)**:
  - Security vulnerabilities.
  - Logic bugs / Data corruption risks.
- **Important Issues (80–89, Non-blocking)**:
  - Code style, naming, minor optimizations.
- **Verification Status**:
  - Test coverage analysis (Existing tests passed? New tests added?).

---

### 8. Finalize

Ask: "Should I auto-fix the minor issues, or do you need a deep-dive explanation on [Complex Part]?"
