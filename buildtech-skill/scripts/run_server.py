#!/usr/bin/env python3
"""
BuildTech 3D Local Server Runner
Serves your 3D Virtual Electronics Workbench locally and opens your browser.
"""

import os
import sys
import socket
import webbrowser
import http.server
import socketserver
from pathlib import Path

def find_available_port(start_port=8080, max_port=8099):
    for port in range(start_port, max_port):
        with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
            if s.connect_ex(('127.0.0.1', port)) != 0:
                return port
    return start_port

def run_local_server(directory=None, target_html="simulator3d.html"):
    if directory is None:
        directory = Path.cwd()
    else:
        directory = Path(directory).resolve()

    os.chdir(str(directory))
    port = find_available_port()

    # Determine file to launch
    target_file = target_html if (directory / target_html).exists() else "simulator.html"
    local_url = f"http://localhost:{port}/{target_file}"

    class CustomHandler(http.server.SimpleHTTPRequestHandler):
        def log_message(self, format, *args):
            pass # Silent server logs

    print("\n" + "=" * 60)
    print("⚡ BUILDTECH 3D VIRTUAL HARDWARE SERVER READY!")
    print("=" * 60)
    print(f"👉 Local Run Link: {local_url}")
    print("👉 Serving from  : " + str(directory))
    print("👉 Press Ctrl+C in this terminal to stop the server.")
    print("=" * 60 + "\n")

    # Automatically launch browser
    webbrowser.open(local_url)

    with socketserver.TCPServer(("", port), CustomHandler) as httpd:
        try:
            httpd.serve_forever()
        except KeyboardInterrupt:
            print("\n🛑 BuildTech local server stopped.")

if __name__ == "__main__":
    dir_arg = sys.argv[1] if len(sys.argv) > 1 else None
    run_local_server(dir_arg)
