# Agent Instructions

## Core Workflow

- Prefer execution over analysis-only responses. Read files, trace the current
  code, run focused checks, and carry requested fixes through commit, push, PR,
  or review-thread resolution when the user asks for that workflow.
- Respect tight scope. If the user asks a narrow question, answer that question
  directly before adding context. Do not expand into broad architecture unless
  it is needed for the requested decision.
- For yes/no capability or root-cause questions, answer yes/no first, then give
  the exact wiring path or evidence.
- For cleanup/delete requests with exact paths or resource names, treat the
  request as permission to execute, not as a request for a plan.
- Preserve explicit user exclusions, such as omitted installation steps or
  scope limits, unless the user later changes them.

## Implementation Quality

- Prefer root-cause fixes over workarounds. Do not add fallback, exception, or
  special-case logic just to make a failing path work unless the fallback is an
  explicit product requirement or a documented compatibility boundary.
- Keep the normal path and valid states clear. If a workaround is unavoidable,
  explain why it is necessary, what condition it covers, and how it avoids
  hiding the underlying invariant.

## Git And Publishing

- Prefer small, logical commits during long implementation work. Do not batch
  unrelated changes at the end when the target repo convention expects
  incremental commits.
- Do not revert user changes. Work with dirty worktrees unless the user asks for
  cleanup.
- Conventional Commit scopes in commit and PR titles should be single-scope, not
  comma-separated multi-scope. Split commits or choose the dominant scope.
- For direct main publish flows, include generated artifacts when relevant and
  check staged diffs for whitespace-only churn.

## Review And PR Handling

- Branch or PR review should be findings-first: list bugs, regressions, missing
  tests, and risks before summaries. Refresh branch state when the user asks for
  a new review or mentions new commits.
- When asked to read reviews from a PR, inspect unresolved review threads,
  evaluate whether each comment is reasonable before changing code, address
  reasonable and actionable feedback, explain rejected feedback, and resolve
  conversations after applying fixes.

## Kubernetes, Helm, And Cluster Work

- Always pass an explicit context:

```sh
kubectl --context <name> ...
helm --kube-context <name> ...
```

- Do not run `kubectl config use-context`.
- For chart or upgrade reviews, inspect rendered charts, API compatibility,
  monitor ownership, and configmap drift; passing tests alone are not enough.

## Documentation And Content Work

- Keep document roles separate: PRDs preserve current and future product
  requirements, business logic, and decision criteria; specs record design
  details at a specific point in time; plans record how a specific task will be
  executed.
- Write specs and plans as point-in-time records using
  `YYYY-MM-DD-xxxx.md` filenames when possible. Do not treat them as documents
  that must stay synchronized with the latest implementation; reserve that
  expectation for PRDs.
- Keep implementation details out of PRDs. Avoid code snippets, file paths,
  function names, and source-layout details there because they drift as the code
  changes; put implementation snapshots in specs or plans instead.
- In comments and docs, describe the current required behavior. Do not preserve
  obsolete implementation history such as "it used to do A, then changed to B"
  unless that history is needed as a durable decision record.

## Project Reference And Research

- When addressing complex architectural or implementation problems, reference
  established project patterns and established configurations (e.g., Dynamo,
  SGLang, vLLM) to ensure consistency and leverage prior research.
