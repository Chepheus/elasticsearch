#!/usr/bin/env bash

curl -X DELETE "localhost:9200/music/?pretty"

curl -X PUT "localhost:9200/music/?pretty" -H 'Content-Type: application/json' -d'
{
    "mappings": {
        "properties": {
            "name": {
                "type": "text",
                "fields": {
                    "completion": {
                        "type": "completion"
                    }
                },
                "analyzer": "english"
            }
        }
    }
}
'

curl -X POST "localhost:9200/music/_doc?pretty" -H 'Content-Type: application/json' -d'
{
  "name": "Snoop Dogg"
}
'

curl -X POST "localhost:9200/music/_doc?pretty" -H 'Content-Type: application/json' -d'
{
  "name": "Drake"
}
'

curl -X POST "localhost:9200/music/_doc?pretty" -H 'Content-Type: application/json' -d'
{
  "name": "2Pac"
}
'

curl -X POST "localhost:9200/music/_doc?pretty" -H 'Content-Type: application/json' -d'
{
  "name": "50Cent"
}
'

curl -X POST "localhost:9200/music/_doc?pretty" -H 'Content-Type: application/json' -d'
{
  "name": "Kendrick Lamar"
}
'

curl -X POST "localhost:9200/music/_doc?pretty" -H 'Content-Type: application/json' -d'
{
  "name": "Lil Wayne"
}
'

curl -X POST "localhost:9200/music/_doc?pretty" -H 'Content-Type: application/json' -d'
{
  "name": "Lil Pump"
}
'

curl -X POST "localhost:9200/music/_doc?pretty" -H 'Content-Type: application/json' -d'
{
  "name": "Lil Flip"
}
'

curl -X POST "localhost:9200/music/_doc?pretty" -H 'Content-Type: application/json' -d'
{
  "name": "Young Dolph"
}
'

curl -X POST "localhost:9200/music/_doc?pretty" -H 'Content-Type: application/json' -d'
{
  "name": "Young Scooter"
}
'