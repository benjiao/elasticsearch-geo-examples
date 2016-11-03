curl -XPOST 'http://localhost:9200/landsat8/scene/_search?pretty=true' -d '{
    "query": {
        "bool": {
            "must": {
                "match_all": {}
            },
            "filter": {
                "geo_distance": {
                    "distance": "100km",
                    "scene_center": {
                        "lat": 14.5995,
                        "lon": 120.9842
                    }
                }
            }
        }
    }
}'