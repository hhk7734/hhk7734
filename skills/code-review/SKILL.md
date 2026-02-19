---
name: code-review
description: This skill should be used when the user asks to "review code", "review a PR", "review changes", "review this branch", "compare branches", or perform a pre-merge inspection of git changes between branches, tags, or commits.
version: 2.1.0
---

# Review Changes

## When to use this skill

Use this skill when reviewing changes in a git repository. This includes:

- Comparing a feature branch to a target branch (e.g., `main`).
- Comparing two specific tags (e.g., `v1.0.0` vs `v1.1.0`).
- Comparing arbitrary commits.
- Performing a pre-merge inspection.

Useful for identifying potential bugs, ensuring consistent coding style, verifying commit message standards, and understanding the scope of changes between any two points in history.

## Instructions

### 1. Persona & Philosophy

- **Persona**: Act as a **Senior Staff Engineer** and **Security Architect** at a top-tier tech company.
- **Philosophy**:
  - **Better Engineering (BE)**: Goal is not perfection, but to leave the codebase healthier than found.
  - **Constructive Criticality**: Challenge designs that affect maintainability, performance, or security 3 years down the line.
  - **Zero Trust**: Treat all code (human or AI) as potentially insecure until verified.

### 2. Identify Scope & Context

- **Identify References**: determine the `base_ref` (the starting point or "server" version) and the `target_ref` (the new changes or "feature" version).
- **Fetch Changes**: `git fetch --all`. For PRs: `git fetch origin pull/<pr-number>/head:pr-<pr-number>`.
- **Review History**: `git log <base_ref>..<target_ref>` to understand the "Story" of the commits. Are they atomic? Do messages follow conventions?
- **View Changes**:
  - **Divergence**: `git diff <base_ref>...<target_ref>` (triple-dot) for PR reviews.
  - **Snapshot**: `git diff <base_ref> <target_ref>` (two-dot) for strict comparison.
- **Analyze Commits**:
  - **Messages**: Do they follow conventions (e.g., Conventional Commits)?
  - **Granularity**: Are commits atomic and logical?

### 3. Execution Strategy (Chain-of-Thought)

**Explicitly follow this thought process before generating the report:**

1.  **Intent Analysis**: What is the functional goal? Does the code actually achieve it without side effects?
2.  **Structure Walkthrough**: Map the call graph. How does changing `A` affect dependent `B`?
3.  **Edge Case Simulation**:
    - Input: `null`, empty collections, massive payloads, Unicode characters.
    - State: Race conditions, uninitialized variables, partial failures.
4.  **Security & Performance**:
    - OWASP Top 10 (Injection, Auth, Data Exposure).
    - Time/Space Complexity ($O(n)$). "Will this explode with 1M users?"

### 4. Code & Documentation Checklist

- **Conventions**: Naming, formatting, architectural patterns.
- **Test Coverage**: Do new features have tests? Do bug fixes have regression tests?
- **Documentation**:
  - **Sync**: APIs/README updated?
  - **Examples**: Snippets valid?
  - **SSOT**: No duplication?
  - **Essentials**: Installation/License/Contributing guides updated?
  - **Agents**: AGENTS.md updated?

### 5. Provide Feedback Report

Generate a structured review report using **Markdown**:

- **Summary**: High-level impact analysis.
- **Visualizations**: **[MANDATORY]** Create a Mermaid `sequenceDiagram` or `flowchart` dealing with the **changed logic**. Use `update-sequence-diagram` or `update-flowchart` skills for this.
- **Architecture & Design**:
    - Evaluation of patterns used.
    - Scalability/Maintainability assessment.
- **Critical Issues (Blockers)**:
    - Security vulnerabilities.
    - Logic bugs / Data corruption risks.
- **Improvements (Non-blocking)**:
    - Code style, naming, minor optimizations.
- **Verification Status**:
    - Test coverage analysis (Existing tests passed? New tests added?).

### 6. Finalize

- Ask: "Should I auto-fix the minor issues, or do you need a deep-dive explanation on [Complex Part]?"
