#!/usr/bin/env python3
"""Bring the published Part 01 onboarding exercise into companion ZIP text."""

from pathlib import Path
import sys

companion = Path(sys.argv[1]) / "github-copilot-rails-labs"
published = Path(sys.argv[2]).read_text(encoding="utf-8")

start = published.index("### Early Copilot CLI check: `copilot init`")
end = published.index("## 5–12 minutes:", start)
init_section = published[start:end]


def edit(relative, fn):
    path = companion / relative
    if not path.exists():
        return
    original = path.read_text(encoding="utf-8")
    changed = fn(original)
    if changed != original:
        path.write_text(changed, encoding="utf-8")
    print(f"Checked companion {relative}")


def article(text):
    if "### Early Copilot CLI check: `copilot init`" in text:
        return text
    marker = "## 5–12 minutes:"
    if marker not in text:
        raise ValueError("Part 01 article lacks the request-trace section")
    text = text.replace(marker, init_section + marker, 1)
    toc = "- [5–12 minutes: generate an inventory and trace one path](#trace)"
    if toc in text:
        text = text.replace(toc, "- [Early Copilot CLI check: `copilot init`](#init)\n" + toc, 1)
    return text


def workbook(text):
    if "### 1b · Try Copilot CLI initialization" in text:
        return text
    marker = "### 2 · Trace the path"
    if marker not in text or "## Answer key" not in text:
        raise ValueError("Part 01 workbook does not have its expected exercise structure")
    exercise = (
        "### 1b · Try Copilot CLI initialization\n\n"
        "Follow [the disposable-copy lab](../../parts/01-first-30-minutes/copilot-init-lab.md). "
        "After `copilot init`, list one instruction supported by source, one unverified claim, "
        "and one question the generated instructions cannot answer about `POST /api/requests`. "
        "Do not edit the original CaseFlow app or report a test as passed without an observed run.\n\n"
    )
    text = text.replace(marker, exercise + marker, 1)
    answer = (
        "**1b · Initialization.** The actual proposal depends on your Copilot CLI session. "
        "Check its suggested commands against `Gemfile`, `bin/` and `spec/`, and route claims against "
        "`config/routes.rb`. The distributed app already has instructions and `AGENTS.md`, so its "
        "`/init` output is influenced by existing context. Even a source-backed instruction is not "
        "an observed API result; the request atlas and local test remain separate evidence.\n\n"
    )
    answer_marker = "**2 · Trace.**"
    if answer_marker not in text:
        raise ValueError("Part 01 workbook lacks its trace answer")
    text = text.replace(answer_marker, answer + answer_marker, 1)
    return text


def part_readme(text):
    if "copilot-init-lab.md" in text:
        return text
    marker = "## Practice\n"
    if marker not in text:
        raise ValueError("Part 01 README lacks Practice")
    addition = (
        "\nStart with the [Copilot CLI initialization lab](copilot-init-lab.md) in a disposable "
        "CaseFlow copy. Review any generated instructions against source before building the "
        "request atlas; the packaged app already carries Part 02 guidance.\n"
    )
    return text.replace(marker, marker + addition, 1)


def root_readme(text):
    if "parts/01-first-30-minutes/copilot-init-lab.md" in text:
        return text
    marker = "## Read post 01\n"
    if marker not in text:
        raise ValueError("Companion README lacks Part 01")
    addition = (
        "\nBefore tracing the Rails request, try the "
        "[Part 01 Copilot CLI initialization lab](parts/01-first-30-minutes/copilot-init-lab.md) "
        "in an isolated app copy. `copilot init` proposes project instructions; verify them "
        "against the real files and keep the original app unchanged.\n"
    )
    return text.replace(marker, marker + addition, 1)


edit("docs/posts/01-first-30-minutes/article.md", article)
edit("docs/labs/01-study-workbook.md", workbook)
edit("parts/01-first-30-minutes/README.md", part_readme)
edit("README.md", root_readme)
