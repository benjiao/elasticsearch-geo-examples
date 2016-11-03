import json
import requests


if __name__ == '__main__':
    with open('landsat8.json') as f:
        scenes = json.load(f)

    for scene in scenes:
        r = requests.post(
            "http://localhost:9200/landsat8/scene/%s" % (scene['scene_id']), data=json.dumps(scene))
        print r.text
