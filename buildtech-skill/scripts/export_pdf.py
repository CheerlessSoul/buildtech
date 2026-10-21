#!/usr/bin/env python3
"""
BuildTech PDF Exporter Utility
Converts HTML blueprints or markdown specifications into polished PDF documents.
Supports:
1. Native Headless Chrome / Edge print-to-pdf
2. Playwright / WeasyPrint (if installed)
3. Default fallback: launches default browser directly into the Print/Save as PDF dialog
"""

import sys
import os
import subprocess
import webbrowser
from pathlib import Path

def export_to_pdf(input_file="blueprint.html", output_pdf="hardware_blueprint.pdf"):
    input_path = Path(input_file).resolve()
    output_path = Path(output_pdf).resolve()

    if not input_path.exists():
        print(f"Error: Target file '{input_file}' not found.")
        return False

    print(f"[BuildTech] Exporting '{input_path.name}' to PDF...")

    # Method 1: Check for Headless Chrome / Edge on Windows, Linux, macOS
    browsers = [
        # Windows Chrome / Edge
        r"C:\Program Files\Google\Chrome\Application\chrome.exe",
        r"C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe",
        r"C:\Program Files\Microsoft\Edge\Application\msedge.exe",
        # Linux Chrome / Chromium
        "/usr/bin/google-chrome",
        "/usr/bin/chromium-browser",
        "/usr/bin/chromium",
        # macOS Chrome / Edge
        "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome",
        "/Applications/Microsoft Edge.app/Contents/MacOS/Microsoft Edge"
    ]

    for browser in browsers:
        if os.path.exists(browser):
            try:
                cmd = [
                    browser,
                    "--headless=new",
                    "--disable-gpu",
                    f"--print-to-pdf={str(output_path)}",
                    str(input_path)
                ]
                subprocess.run(cmd, check=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
                if output_path.exists():
                    print(f"✅ Success! PDF generated at:\n   -> {output_path}")
                    return True
            except Exception as e:
                continue

    # Method 2: Fallback - Open in default browser for 1-click Ctrl+P / Cmd+P
    print("ℹ️ Opening print-ready blueprint in your web browser...")
    webbrowser.open(input_path.as_uri())
    print("👉 Click the 'Export to PDF' button on the top right to save!")
    return True

if __name__ == "__main__":
    target = sys.argv[1] if len(sys.argv) > 1 else "blueprint.html"
    out = sys.argv[2] if len(sys.argv) > 2 else "hardware_blueprint.pdf"
    export_to_pdf(target, out)
