import http.server
import socketserver
import os
import pathlib

PORT = 8000

os.chdir(pathlib.Path(__file__).parent.parent.joinpath("assets").joinpath("parsed_documents"))

handler = http.server.SimpleHTTPRequestHandler

with socketserver.TCPServer(("", PORT), handler) as httpd:
    print("Server started at localhost:" + str(PORT))
    httpd.serve_forever()
