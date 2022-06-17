#!/bin/bash

# create schema
curl -X POST -H 'Content-type:application/json' --data-binary '{"add-field":{"name":"title", "type":"text_general", "multiValued":true, "stored":true}}' http://localhost:8983/solr/sikoper/schema
curl -X POST -H 'Content-type:application/json' --data-binary '{"add-field":{"name":"creator", "type":"text_general", "multiValued":true, "stored":true}}' http://localhost:8983/solr/sikoper/schema
curl -X POST -H 'Content-type:application/json' --data-binary '{"add-field":{"name":"subject", "type":"text_general", "multiValued":true, "stored":true}}' http://localhost:8983/solr/sikoper/schema
curl -X POST -H 'Content-type:application/json' --data-binary '{"add-field":{"name":"description", "type":"text_general", "multiValued":true, "stored":true}}' http://localhost:8983/solr/sikoper/schema
curl -X POST -H 'Content-type:application/json' --data-binary '{"add-field":{"name":"format", "type":"text_general", "multiValued":true, "stored":true}}' http://localhost:8983/solr/sikoper/schema
curl -X POST -H 'Content-type:application/json' --data-binary '{"add-field":{"name":"source", "type":"text_general", "multiValued":true, "stored":true}}' http://localhost:8983/solr/sikoper/schema
curl -X POST -H 'Content-type:application/json' --data-binary '{"add-field":{"name":"publisher", "type":"text_general", "multiValued":true, "stored":true}}' http://localhost:8983/solr/sikoper/schema
curl -X POST -H 'Content-type:application/json' --data-binary '{"add-field":{"name":"date", "type":"text_general", "multiValued":true, "stored":true}}' http://localhost:8983/solr/sikoper/schema
curl -X POST -H 'Content-type:application/json' --data-binary '{"add-field":{"name":"language", "type":"text_general", "multiValued":true, "stored":true}}' http://localhost:8983/solr/sikoper/schema
curl -X POST -H 'Content-type:application/json' --data-binary '{"add-field":{"name":"identifier", "type":"text_general", "multiValued":true, "stored":true}}' http://localhost:8983/solr/sikoper/schema
curl -X POST -H 'Content-type:application/json' --data-binary '{"add-field":{"name":"rights", "type":"text_general", "multiValued":true, "stored":true}}' http://localhost:8983/solr/sikoper/schema
curl -X POST -H 'Content-type:application/json' --data-binary '{"add-field":{"name":"relation", "type":"text_general", "multiValued":true, "stored":true}}' http://localhost:8983/solr/sikoper/schema
curl -X POST -H 'Content-type:application/json' --data-binary '{"add-field":{"name":"type", "type":"text_general", "multiValued":true, "stored":true}}' http://localhost:8983/solr/sikoper/schema

# cleanup data solr
curl -X POST "http://localhost:8983/solr/sikoper/update?commit=true" -H "Content-Type: application/json" --data-binary '{"delete": {"query":"*:*"}}'


