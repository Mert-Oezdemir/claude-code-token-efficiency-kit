#!/usr/bin/env python3
"""Harici bağımlılık gerektirmeyen dokümantasyon testleri."""
from pathlib import Path
import re
import unittest

ROOT = Path(__file__).resolve().parents[1]

class DocsTests(unittest.TestCase):
    def test_required_files(self):
        names = [
            "README.md", "LICENSE", "LEGAL.md", "CONTRIBUTING.md",
            "docs/headroom.md", "docs/graphify.md", "docs/codeburn.md",
            "docs/ponytail.md", "docs/birlikte-kullanim.md", "docs/olcum.md",
            "docs/kaynaklar.md", "examples/CLAUDE.md"
        ]
        for name in names:
            with self.subTest(name=name):
                self.assertTrue((ROOT / name).is_file(), name)

    def test_readme_relative_links(self):
        content = (ROOT / "README.md").read_text(encoding="utf-8")
        for link in re.findall(r"\]\(([^)]+)\)", content):
            if "://" in link or link.startswith("#"):
                continue
            with self.subTest(link=link):
                self.assertTrue((ROOT / link.split("#")[0]).is_file(), link)

    def test_no_external_code_vendored(self):
        for folder in ("node_modules", ".claude/skills/ponytail", "vendor", ".env"):
            self.assertFalse((ROOT / folder).exists(), folder)

if __name__ == "__main__":
    unittest.main()
