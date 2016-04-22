#!/usr/bin/env bash

export ES_HOST="${ES_HOST:-elastic}"
export ES_INDEX="${ES_INDEX:-us_large_cities}"

main() {
    dir="${BASH_SOURCE%/*}"
    if [[ ! -d "$dir" ]]; then dir="$PWD"; fi
    . "$dir/create_index.sh"
    . "$dir/insert_data.sh"
    . "$dir/test_data.sh"

    echo "Creating ES spatial index [$ES_INDEX] on [$ES_HOST]"

    create_index "$ES_HOST" "$ES_INDEX" ${dir}/cities.json
    insert_data "$ES_HOST" "$ES_INDEX"

    echo "Testing data;  results should be [San Francisco, Berkeley, Oakland, Richmond]"
    testdata "$ES_HOST" "$ES_INDEX" ${dir}/test.json
}

main
