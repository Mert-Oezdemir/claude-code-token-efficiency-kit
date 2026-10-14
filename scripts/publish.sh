#!/usr/bin/env bash
# Yeni bir GitHub deposu oluşturmak için isteğe bağlı yerel yardımcı.
set -euo pipefail
repo_name="${1:-claude-code-token-efficiency-kit}"
[[ "$repo_name" =~ ^[A-Za-z0-9._-]+$ ]] || exit 2
command -v git >/dev/null || exit 1
command -v gh >/dev/null || exit 1
gh auth status >/dev/null
repo_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_dir"
if [[ ! -d .git ]]; then git init -b main; fi
if ! git rev-parse --verify HEAD >/dev/null 2>&1; then
  git add README.md LICENSE LEGAL.md CONTRIBUTING.md .gitignore docs examples scripts tests
  git commit -m "docs: publish Turkish token efficiency guide"
fi
owner="$(gh api user --jq .login)"
if gh repo view "$owner/$repo_name" >/dev/null 2>&1; then
  echo "Depo zaten var: $owner/$repo_name" >&2
  exit 1
fi
gh repo create "$owner/$repo_name" --public --source . --remote origin --push
