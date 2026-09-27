#!/usr/bin/env bash
set -euo pipefail

site_root="${1:?Pass the generated site directory}"
prompt_source="${2:?Pass the directory containing *.prompt.txt files}"
site_root="$(cd "$site_root" && pwd)"
prompt_source="$(cd "$prompt_source" && pwd)"

archives=(
  first-30-minutes-rails-repository-support.zip
  teach-copilot-rails-context-support.zip
  issue-to-reviewable-rails-pr-support.zip
  copilot-rails-learning-map-support.zip
)
prompts=(01-trace-request 02-context-audit 03-agent-issue-to-pr)

working_dir="$(mktemp -d)"
trap 'rm -rf "$working_dir"' EXIT

for archive_name in "${archives[@]}"; do
  archive_path="$site_root/assets/downloads/$archive_name"
  test -f "$archive_path"
  unpacked="$working_dir/${archive_name%.zip}"
  mkdir -p "$unpacked"
  unzip -qq "$archive_path" -d "$unpacked"
  mkdir -p "$unpacked/prompts" "$unpacked/github-copilot-rails-labs/prompts" "$unpacked/github-copilot-rails-labs/caseflow/.github/prompts"

  for prompt in "${prompts[@]}"; do
    canonical="$prompt_source/$prompt.prompt.txt"
    test -s "$canonical"
    cp "$canonical" "$unpacked/prompts/$prompt.md"
    cp "$canonical" "$unpacked/github-copilot-rails-labs/prompts/$prompt.md"
    cp "$canonical" "$unpacked/github-copilot-rails-labs/caseflow/.github/prompts/$prompt.prompt.md"
    cmp "$unpacked/prompts/$prompt.md" "$unpacked/github-copilot-rails-labs/caseflow/.github/prompts/$prompt.prompt.md"
  done

  lab_source="$prompt_source/01-copilot-init-lab.txt"
  test -s "$lab_source"
  mkdir -p "$unpacked/github-copilot-rails-labs/parts/01-first-30-minutes"
  cp "$lab_source" "$unpacked/github-copilot-rails-labs/parts/01-first-30-minutes/copilot-init-lab.md"

  cat > "$unpacked/START-HERE.md" <<'EOF'
# GitHub Copilot for Rails Engineers · support archive

Read the three full prompts in `prompts/` at the root of this archive.
To run one in VS Code, open `github-copilot-rails-labs/caseflow/` as the workspace. Its executable prompt files live under `.github/prompts/`; invoke `/01-trace-request`, `/02-context-audit`, or `/03-agent-issue-to-pr` in Copilot Chat.
On macOS, press Command-Shift-Period in Finder if `.github` is hidden.
Part 01 also includes `github-copilot-rails-labs/parts/01-first-30-minutes/copilot-init-lab.md` for trying CLI initialization in a disposable copy.
EOF

  rm "$archive_path"
  (cd "$unpacked" && zip -q -r "$archive_path" .)
  unzip -tqq "$archive_path"
  for prompt in "${prompts[@]}"; do
    unzip -Z1 "$archive_path" | grep -Fqx "prompts/$prompt.md"
    unzip -Z1 "$archive_path" | grep -Fqx "github-copilot-rails-labs/caseflow/.github/prompts/$prompt.prompt.md"
  done
  unzip -Z1 "$archive_path" | grep -Fqx "github-copilot-rails-labs/parts/01-first-30-minutes/copilot-init-lab.md"
  echo "Refreshed $archive_name"
done
