#!/usr/bin/env bash

start='
{
    "suggest": {
        "artist-suggest" : {
            "prefix" : "';
end='",
            "completion" : {
                "field" : "name.completion",
                "size" : 5,
                "skip_duplicates": true,
                "fuzzy" : {
                    "fuzziness" : 2
                }
            }
        }
    }
}
'
curl -X POST "localhost:9200/music/_search?pretty" -H 'Content-Type: application/json' -d "$start$1$end"