import http.server
import socketserver
import os
import pathlib

PORT = 8000

os.chdir(
    pathlib.Path(__file__).parent.parent.joinpath("assets").joinpath("parsed_documents")
)

from http.server import HTTPServer, SimpleHTTPRequestHandler, test
import sys


class CORSRequestHandler(SimpleHTTPRequestHandler):
    def end_headers(self):
        self.send_header("Access-Control-Allow-Origin", "*")
        # self.send_header("Pragma", "public")
        # self.send_header("Expires", "0")
        # self.send_header("Content-Type", "application/json")
        # self.send_header("Cache-Control", "must-revalidate, post-check=0, pre-check=0")
        # self.send_header("Cache-Control", "private")
        # header("Content-Type: $ctype")
        # self.send_header("Content-Disposition", ': attachment; filename="example.json"')
        # self.send_header("Content-Transfer-Encoding", "binary")
        SimpleHTTPRequestHandler.end_headers(self)


if __name__ == "__main__":
    test(
        CORSRequestHandler,
        HTTPServer,
        port=int(sys.argv[1]) if len(sys.argv) > 1 else 8000,
    )
