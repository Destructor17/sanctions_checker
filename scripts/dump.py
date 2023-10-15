import json
import pathlib

in_path = pathlib.Path(__file__).parent.joinpath("in.txt")
out_path = pathlib.Path(__file__).parent.joinpath("out.txt")

content = open(in_path).read()
content = json.dumps(content, ensure_ascii=False)
open(out_path, "w").write(content)
