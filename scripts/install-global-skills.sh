#!/usr/bin/env bash
set -e

pnpm dlx skills add vercel-labs/skills --skill find-skills -g --agent claude-code pi -y
pnpm dlx skills add herdrdev/herdr --skill herdr -g --agent claude-code pi -y
pnpm dlx skills add dietrichgebert/ponytail -g --agent claude-code pi -y
pnpm dlx skills add jetbrains/go-modern-guidelines -g --agent claude-code pi -y
pnpm dlx skills add obra/superpowers -g --agent claude-code pi -y
pnpm dlx skills add mattpocock/skills -g --agent claude-code pi -y
pnpm dlx skills add zanwei/design-dna -g --agent claude-code pi -y
