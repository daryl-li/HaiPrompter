#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "$0")/.." && pwd)"
cd "$repo_root"

message="${1:-}"
if [[ -z "$message" ]]; then
  echo "用法: scripts/publish-public-content.sh \"更新说明\""
  exit 1
fi

scripts/check-public-content.sh

if [[ -z "$(git status --short)" ]]; then
  echo "没有需要发布的改动。"
  exit 0
fi

git add -A
git commit -m "$message"
git push -u origin main

echo "已推送到 GitHub: https://github.com/daryl-li/HaiPrompter"
