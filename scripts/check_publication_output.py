#!/usr/bin/env python3
"""Reject local research inputs and private working files in generated output."""
import sys
from pathlib import Path

root = Path(sys.argv[1] if len(sys.argv) > 1 else "_site")
if not root.is_dir():
    raise SystemExit(f"Publication output does not exist: {root}")
private_dirs = {"src", "src-history", "src-previous", "checkpoints", "logs", ".agents", ".codex"}
blocked = []
for path in root.rglob("*"):
    relative = path.relative_to(root)
    if (any(part in private_dirs for part in relative.parts)
            or path.name == "thought-as-a-system.pdf"
            or path.name == ".env" or path.name.startswith(".env.")
            or path.suffix.lower() == ".log"):
        blocked.append(str(relative))
if blocked:
    print("Publication blocked: local/private files found:", file=sys.stderr)
    print("\n".join(sorted(blocked)), file=sys.stderr)
    raise SystemExit(1)
print("Publication check passed: no configured private inputs found.")
