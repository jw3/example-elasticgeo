#!/usr/bin/env bash

testdata() {
    declare eshost="$1" esidx="$2"

    local res=$(curl -s -XGET "http://$eshost:9200/$esidx/city/_search?pretty=true" -d '
    {
      "query": {
        "filtered" : {
            "query" : {
                "match_all" : {}
            },
            "filter" : {
                "geo_distance" : {
                    "distance" : "20km",
                    "location" : {
                        "lat" : 37.9174,
                        "lon" : -122.3050
                    }
                }
            }
        }
      }
    }')

    local ret=$(echo "$res" | jq -rc [.hits.hits[]._source.city])
    echo "$ret"
}

testdata "$1" "$2"
