#!/usr/bin/env bash

create_index() {
    declare eshost="$1" idx="$2"
    echo $(curl -s -XPUT -d @cities.json "http://$eshost:9200/$idx")
}

create_index "$1" "$2"
