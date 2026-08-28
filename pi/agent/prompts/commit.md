---
description: Generate a commit subject from the current changes
argument-hint: "[extra instructions]"
---
Inspect the current Git changes and recent commit history, then generate one concise English commit subject.

- Inspect the Git status, staged and unstaged diffs, and relevant untracked files.
- Include both staged and unstaged changes by default.
- Follow the repository's existing commit style. If no clear style exists, use Conventional Commits.
- Base the subject only on the current changes.
- Do not modify files, stage changes, or create a commit.
- Output only the commit subject, without a body, description, or Markdown formatting.
- Follow these extra instructions when provided: ${ARGUMENTS:-none}.
