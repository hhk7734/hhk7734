---
name: develop-task
description: This skill should be used when the user wants to "develop a task", "define a task", "clarify requirements", "reduce ambiguity", or needs to establish completion criteria before starting implementation. Operationalizes engineering management into a repeatable process focused on business value.
---

# Develop Task

This skill operationalizes engineering management into a repeatable process, enforcing standards for reducing ambiguity and defining completion based on business value.

To reduce ambiguity, every task must be defined with the following schema before execution begins.

**Interactive Protocol:**
Interactively guide the user through the following 5-step flow. Do not just wait for input — ask targeted questions to extract this information before proceeding to execution.
**Output:** Ensure the final task specification is written to a markdown file.

## 1. Background & Necessity
*   **Context**: Why is this needed now? What is the underlying problem vs. the requested solution?
*   **Value**: How does this align with the product vision? (The "Why" Test).
*   **Risk**: What happens if we are wrong?

## 2. AS-IS
*   Current state analysis. (Can be "None" or empty for brand new features).
*   Identify the specific user ("the team" or "users" is insufficient).

## 3. Strategic Positioning (Execution Mode)
Determine your optimal positioning based on **Situational Awareness** (knowing what/why) and **Operational Clarity** (team knows what to do).

| Mode             | Context (Awareness / Clarity) | Strategy            | Action                                                                      |
| :--------------- | :---------------------------- | :------------------ | :-------------------------------------------------------------------------- |
| **Crisis**       | Low / Low                     | **Stabilize**       | Prioritize coding/investigation to regain control.                          |
| **Ambiguity**    | High / Low                    | **Lead by Example** | Code alongside team to set standards and build shared mental models.        |
| **Flying Blind** | Low / High                    | **Passive Coding**  | Trust the team. Make targeted contributions (bug fixes) to ramp up context. |
| **Clarity**      | High / High                   | **Strategize**      | Step back. Focus on long-term planning, risk mitigation, and "Wolf Time".   |

## 4. TO-BE (Definition of Done)
*   **Goal**: The desired future state.
*   **Done Criteria** (Artifacts over Efforts):
    *   **PR Merged**: Code review passed and merged.
    *   **CD Image**: A deployable image generated via CI/CD.
    *   **Versioned Helm Chart**: A chart capable of running the image.
    *   **End-to-End Validation**: Proof that it works in the target environment.
*   **Action Items**: Implementation steps to bridge the gap and resolve unknowns.

*The Manifesto:*
*   Investigation $\rightarrow$ produces a **Document**.
*   Refactoring $\rightarrow$ produces a **Metric Improvement** or **Tech Debt Removal**.

## 5. Create Markdown File
*   Compile the gathered information into a structured markdown file (e.g., `task.md`) to serve as the single source of truth.
