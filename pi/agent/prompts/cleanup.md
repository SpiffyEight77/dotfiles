---
description: Free disk space on a Linux development VM
argument-hint: "[dry-run]"
---
Free disk space on this Linux machine. Arguments: ${ARGUMENTS:-none}.

## Rules

- Run only on Linux. If `uname -s` is not `Linux`, say that this prompt supports Linux only and stop.
- If the arguments contain `dry-run`, do not delete anything. Measure and report what each step would free, then stop.
- Never use `sudo` or any other privileged operation.
- Never touch Docker volumes or containers.
- Never set global tool versions. Some commands may be mise shims that fail outside a project with "No version is set"; if a tool is missing or fails this way, skip that item and report it.
- Measure the size of every item before acting on it, so the report shows what was freed.

## Steps

1. Record `df -h /`.
2. Check running processes with `pgrep -af`. If `go build`, `go test`, or the Go `compile` tool is running, skip `~/.cache/go-build`. If `gopls` is running, skip `~/.cache/gopls`. Report every skipped item with the reason.
3. Clean these items directly, without asking:
   - `rm -rf ~/.cache/go-build`. Remove the directory directly; do not call `go`.
   - `npm cache clean --force`.
   - `rm -rf ~/.cache/.bun ~/.cache/gopls ~/.cache/golangci-lint`.
   - `pnpm store prune`.
   - `docker image prune -f` and `docker builder prune -f` (dangling images and build cache only).
   - Old herdr-web-ui versions in `~/.local/share/herdr-web-ui/`. Each version is a `remote-vN` symlink plus a `remote-vN-<hash>` directory. Find the version used by the running herdr-web-ui process (`pgrep -af herdr-web-ui`) and the newest version, keep both, and remove the other `remote-vN` symlinks and directories.
   - Nix generations: for both `home-manager` and `profile` in `${XDG_STATE_HOME:-$HOME/.local/state}/nix/profiles/`, keep the latest 3 generations with `nix-env --profile <path> --delete-generations +3`. Skip a profile that does not exist. Then run `nix-collect-garbage` without `-d`.
4. Collect these items for confirmation, but do not act on them yet:
   - Docker images with no container using them. Use `docker images` and `docker ps -a` to list them with their sizes.
   - The Go module cache (`${GOMODCACHE:-$HOME/go/pkg/mod}`). To remove it, run `chmod -R u+w` on it first because its files are read-only, then `rm -rf` it.
   - Unused mise tool versions. List them with `mise prune --dry-run`; the real action is `mise prune --yes`.
5. Collect these items for the report only. Never act on them:
   - Herdr worktrees from `herdr worktree list`. For each worktree, show its size and split the list into two groups: worktrees with uncommitted changes (`git status --porcelain`), and clean worktrees whose branch is merged into the default branch. Suggest `herdr worktree remove` for the clean, merged ones. Never remove a worktree with `rm`.
   - System items that need `sudo`: the journal size (`journalctl --disk-usage`), `/var/cache/apt/archives`, and `/var/log`. Show the commands the user can run, such as `sudo journalctl --vacuum-size=200M` and `sudo apt-get clean`.
   - Up to 10 directories under `$HOME` that are larger than 500M and are not covered by the items above. Use `du -xh --max-depth=2 "$HOME"`.
6. Record `df -h /` again.

## Report

- Show `df -h /` before and after.
- Show three tables: cleaned, pending confirmation, and report only. Each row shows the path, the size, and the reason or result.
- Number the pending items and show the exact command for each one.
- Ask the user to reply with item numbers (for example `1,3`) or `all`. Run only the selected items and treat any other reply as cancel. After running them, show `df -h /` again.
