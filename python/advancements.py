import csv
import numpy as np
import json
import os

lang = 'en'
lang = 'ja'

database_path = 'advancements_' + lang + '.json'

with open(database_path , encoding='utf-8') as f:
    database = json.load(f)

common_path = '../data/mobtamer/advancements/'

def makedir(path):
    if not os.path.isdir(os.path.dirname(path)):
        os.makedirs(os.path.dirname(path))

for item in database:
    path = common_path + item["path"] + '.json'
    with open(path, encoding='utf-8', mode="r") as f:
        d = json.load(f)
    d["display"]["title"] = item["title"]
    description = []
    if "description" in item and len(item["description"])>0:
        for x in item["description"]:
            if "color" in x:
                if "text" in x:
                    description.append({"text":x["text"],"color":x["color"]})
                elif "translate" in x:
                    description.append({"translate":x["translate"],"color":x["color"]})
            else:
                description.append({"text":x["text"]})
        d["display"]["description"] = description
    d = json.dumps(d, indent=2)
    with open(path, encoding='utf-8', mode="w") as f:
        f.write(d)
    with open(path) as f:
        print(f.read())
