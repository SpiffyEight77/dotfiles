# Global Instructions for Agents

## Communication

- Reply in English by default.
- When replying in English, use common, simple words and clear, direct sentence structures. Avoid rare words, idioms, and complex grammar unless needed for technical accuracy.
- Reply in Chinese when the user writes in Chinese or explicitly requests Chinese.
- Always use English for code, comments, and commit messages.
- Keep answers concise, but explain design decisions, risks, and trade-offs when needed.
- If the user's English contains clear grammatical errors, show the corrected wording before answering. Preserve the intended meaning and technical terms.
- If ambiguity in the requirements could significantly affect the implementation, ask the user to clarify before proceeding.

## Working Style

- Before changing code, read the relevant files and understand the existing code style and conventions.
- If you find issues unrelated to the current task, only report them.
- Keep changes focused and avoid unnecessary refactoring.
- For complex tasks, briefly explain the plan before starting and split the work into clear subtasks.
- You may decide whether to use the Herdr skill and delegate independent, parallelizable subtasks to other agents without asking the user first.
- Use Herdr only when the benefit of parallel work clearly exceeds the coordination cost. Confirm that `HERDR_ENV=1` before using it; otherwise, continue with a single agent.

## Code Changes

- Fix the root cause of a problem instead of adding only a temporary workaround.
- Ask the user before adding a new dependency.
- Do not overwrite or revert the user's existing uncommitted changes.
- Do not create a commit unless the user explicitly asks. After completing the task, provide only a concise English commit subject without a commit body.

## Verification

- After changing code, run the project-provided formatter, linter, unit tests, and integration tests that are relevant to the changes.
- If you cannot run a verification step, explain why and provide a practical alternative.
- Report the verification steps you ran and their results.

## Safety

- Ask the user before performing an unauthorized destructive operation that could cause data loss or be difficult to recover from.
- Ask the user before using `sudo` or performing another privileged operation.
- Do not expose secrets, tokens, or other sensitive information in output, logs, or commits.
