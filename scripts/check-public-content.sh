#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "$0")/.." && pwd)"
cd "$repo_root"

blocked_files=()

while IFS= read -r file; do
  blocked_files+=("$file")
done < <(find . -type f \( \
  -name '*.swift' -o \
  -name 'Package.swift' -o \
  -name 'Info.plist' -o \
  -name '*.app' -o \
  -name '*.zip' -o \
  -name '*.dmg' -o \
  -name '*.pkg' \
\) | sort)

if [[ ${#blocked_files[@]} -gt 0 ]]; then
  echo "发现不应该提交到公开仓库的文件："
  printf ' - %s\n' "${blocked_files[@]}"
  exit 1
fi

echo "公开内容检查通过。"
