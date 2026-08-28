---
description: Sync changed dotfiles to the XDG config directory
argument-hint: "[paths or extra instructions]"
---
Sync changed configuration files from the current dotfiles Git repository to `${XDG_CONFIG_HOME:-$HOME/.config}`.

- Find the repository root with `git rev-parse --show-toplevel`.
- Inspect `git status --short --untracked-files=all` and use the repository as the source of truth.
- By default, include modified, added, renamed, and untracked files. If paths are provided, limit the sync to those paths.
- Map each file from `<repo-root>/<relative-path>` to `${XDG_CONFIG_HOME:-$HOME/.config}/<relative-path>`.
- Sync only files inside top-level application directories. Skip repository-level files such as `.gitignore`, `README.md`, and `Brewfile`.
- Copy individual files rather than whole directories so runtime and machine-specific files in the destination remain untouched.
- Create missing destination directories and preserve file permissions.
- Copy a file without asking when the operation only creates it or replaces it with the repository version.
- Never copy `.git`, Git-ignored files, credentials, secrets, session history, caches, generated package directories, or files such as `auth.json`, `trust.json`, `models-store.json`, `sessions/`, and `npm/`.
- If a source was deleted or renamed, do not delete the old destination automatically. Report it and ask for confirmation before deletion.
- Do not replace a destination symlink that points outside the dotfiles repository. Report it instead.
- After copying, verify that every copied file matches its source exactly.
- Do not modify, stage, commit, or push repository files.
- Finish with a concise list of copied, skipped, and pending-deletion files.
- Follow these paths or extra instructions when provided: ${ARGUMENTS:-none}.
