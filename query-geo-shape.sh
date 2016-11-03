curl -XPOST 'http://localhost:9200/landsat8/scene/_search?pretty=true' -d '{
    "query": {
        "bool": {
            "must": {
                "match_all": {}
            },
            "filter": {
                "geo_shape": {
                    "footprint": {
                        "shape": {
                            "type": "Polygon",
                            "coordinates": [
                                [
                                    [120.59692382812499, 15.739388446649],
                                    [119.970703125,14.966013251567164],
                                    [120.38818359375, 14.019355706886051],
                                    [120.91552734375,14.583583455156525],
                                    [122.70629882812499,15.241789855961722],
                                    [120.59692382812499, 15.739388446649]
                                ]
                            ]
                        }
                    }
                }
            }
        }
    }
}'