#!/usr/bin/env bash

export ESHOST=localhost
export INDEX="us_large_cities"

./create_index.sh "$ESHOST" "$INDEX"
./insert_data.sh "$ESHOST" "$INDEX"

echo "Testing data;  results should be [San Francisco, Berkeley, Oakland, Richmond]"
./test_data.sh "$ESHOST" "$INDEX"
