#!/usr/bin/env bash

export ES_HOST="${ES_HOST:-elastic}"
export ES_INDEX="${ES_INDEX:-us_large_cities}"

$(create_index.sh "$ES_HOST" "$ES_INDEX")
$(insert_data.sh "$ES_HOST" "$ES_INDEX")

echo "Testing data;  results should be [San Francisco, Berkeley, Oakland, Richmond]"
$(test_data.sh "$ES_HOST" "$ES_INDEX")
