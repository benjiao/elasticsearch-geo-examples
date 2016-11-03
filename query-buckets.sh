curl -XPOST 'http://localhost:9200/landsat8/scene/_search?pretty=true' -d  '{
    "size": 0,
    "query": {
        "bool": {
            "must": [],
            "must_not": []
        }
    },
    "aggs": {
        "scene-grid": {
            "geohash_grid": {
                "field": "scene_center",
                "precision": 3
            }
        }
    }
}'