import json
import pathlib

class ElementParser:
    def __init__(self, path: pathlib.Path) -> None:
        self.path = path
        self.traversed = []
    
    def traverse(self) -> any:
        raise NotImplementedError()
    
    def parse(self, clazz, name: str):
        self.traversed.append(name)
        parser: ElementParser = clazz(self.path.joinpath(name))
        result = parser.traverse()
        if parser.path.is_dir():
            assert sorted(parser.traversed) == sorted(parser.list_children())
        assert result != None
        return result

    def list_children(self) -> list[str]:
        return [path.name for path in self.path.iterdir() if not path.name.startswith(".")]
    
class Text(ElementParser):
    def traverse(self) -> any:
        return open(self.path).read().strip()
    
class Json(ElementParser):
    def traverse(self) -> any:
        return json.load(open(self.path))
    
class DocumentListBodyParser(ElementParser):
    def traverse(self):
        result = dict()
        for name in self.list_children():
            value = self.parse(Text, name)
            for key in name.split("+"):
                result[key] = value
        return result
    
class DocumentListSectionsParser(ElementParser):
    def traverse(self):
        result = dict()
        for name in self.list_children():
            result[name] = self.parse(DocumentListParser, name)
        return result

class DocumentListParser(ElementParser):
    def traverse(self):
        result = {
            "title": self.parse(Text, "title.txt"),
            "description": self.parse(Text, "description.txt"),
            "refs": self.parse(Json, "refs.json")
        }
        if "raw_body.txt" in self.list_children():
            result["raw_body"] = self.parse(Text, "raw_body.txt")
        elif "body" in self.list_children():
            result["body"] = self.parse(DocumentListBodyParser, "body")
        else:
            raise KeyError()
        if "sections" in self.list_children():
            result["sections"] = self.parse(DocumentListSectionsParser, "sections")
        return result

class DocumentListsParser(ElementParser):
    def traverse(self):
        result = dict()
        for name in self.list_children():
            result[name] = self.parse(DocumentListParser, name)
        return result
    
class DocumentSectionParser(ElementParser):
    def traverse(self):
        result = {
            "title": self.parse(Text, "title.txt"),
            "body": self.parse(Text, "body.txt"),
        }
        if "sections" in self.list_children():
            result["sections"] = self.parse(DocumentSectionsParser, "sections")
        return result

    
class DocumentSectionsParser(ElementParser):
    def traverse(self):
        result = dict()
        for name in self.list_children():
            result[name] = self.parse(DocumentSectionParser, name)
        return result

class DocumentParser(ElementParser):
    def traverse(self):
        return {
            "title": self.parse(Text, "title.txt"),
            "source": self.parse(Text, "source.txt"),
            "lists": self.parse(DocumentListsParser, "lists"),
            "sections": self.parse(DocumentSectionsParser, "sections"),
        }

example = DocumentParser(pathlib.Path(__file__).parent.joinpath("example")).traverse()

json.dump(
    example,
    open(pathlib.Path(__file__).parent.parent.joinpath("assets").joinpath("parsed_documents").joinpath("example.json"), "w"),
    indent=4, 
    ensure_ascii=False,
)
