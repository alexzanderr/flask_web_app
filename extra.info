
Databases paradigms
====================




1. key-value store
	every key is unique
	used for caching

examples:
	redis
		in memory
		very fast
	memcached
		in memory
		https://wiki.archlinux.org/title/Memcached - ???
	etcd
		on disk
		used by kubernetes

2. wide column database
	every key stores a column family
	doesnt have schema -> can handle unstructured data
	cql -> query language
	cannot do joins
	easy to scale up
	its replicating data across nodes
	its decentralized/distributed
	can scale horizontally - on more machines

	best for
		time-series
		historical records
		high-write, low-read

	iot devices
	sensors
	netflix, history of shows you watched

	cannot be primary app database

examples:
	cassandra

	apache hbase


3. document oriented database
	each document is a container for key value pairs
	unstructured and dont require schema
	documents are grouped in collections
	field within a collection can be indexed
	collections can be organised in logical hierarchy

	good for
		games
		mobile games
		iot

	not ideal for graphs at all

examples:
	mongodb
	firestore
	dynamodb
	couchdb


4. relational databases

	sql languages
	can join data together using a query (sql)
	requires a schema ( you need to have it designed )

	not ideal for unstructured data

examples:
	postgresql
	mysql
	sql server
	cockroach
		designed to operate at scale

5. graph databases
	data is nodes and relationsip is edges

	used for
		fraud detection in finance
		building internal knowledge graphs

6. search database
	analyses all text in the document and creates an indexe of the searchable terms

	very fast on large datasets
	typehead search box

examples:
	solar
	elasticsearch

examples:
	degraph
	neo4j

7. multi-model database
	send grapql schema -> receive json
	acid compliant
	extremely fast
	
examples:
	graphql
	fauna