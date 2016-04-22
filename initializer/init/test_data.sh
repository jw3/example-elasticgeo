#!/usr/bin/env bash

testdata() {
    declare eshost="$1" esidx="$2"

    local res=$(curl -s -XGET -d @test.json "http://$eshost:9200/$esidx/city/_search")
    local ret=$(echo "$res" | jq -c [.hits.hits[]._source.city])
    echo "$ret"
}

testdata "$1" "$2"
