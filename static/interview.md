
site reliability engineer mpos air:
	https://metro.digital/join-us/offers/1309519

	metro is huge and in over 25 countries
	metro digital is developing software for them
	has a long history of business to business (B2B)
	M.POS air is a checkout solution, meaning payment
		compute ammount to pay for every type of customer
		performant invoicing

	SREs are involved in delivery and production

	production readness (monitoring)
		they develope continuous monitoring and self-healing for production apps and environment

	all phases of software engineering
		inception to coding, testing, delivery, and operation
		they need automation

	seek out feedback from users while developing new features


teams meeting:
	https://teams.microsoft.com/dl/launcher/launcher.html?url=%2F_%23%2Fl%2Fmeetup-join%2F19%3Ameeting_Y2E0NjZhYzYtNWQxMC00NTJhLWJmZDEtYzk5ZGRjNjEyMjg3%40thread.v2%2F0%3Fcontext%3D%257b%2522Tid%2522%253a%252264322308-09a9-47a3-8c1c-b82871d60568%2522%252c%2522Oid%2522%253a%252298880e57-c6d1-49fe-8dc2-0a1aea615d08%2522%257d%26anon%3Dtrue&type=meetup-join&deeplinkId=89135544-dab2-4d06-8b96-9e5678dbc81f&directDl=true&msLaunch=true&enableMobilePage=true&suppressPrompt=true

their products
	https://metro.digital/products


quick description about
	Site Reliability Engineer MPOS Air
		holistic approach:
			phases of software egineering:
				- inception
				- coding
				- testing
				- delivery
				- operation

			this part says that i need to do automation on every one of this stages

		performance mindset:
			i need to increase productivity of dev teams by focusing on:
				- observability
				- scalability (vertical scale of the app)
				- availability
				- maintainability
				- reliability




What to do and learn:
	google cloud platform

	amazon web services

	microsoft azure

	docker
		docker cli
		docker d
		/var/run/docker.sock

		docker has exposed http REST API with unix socket + http

		create Dockerfile with
			FROM (import repo from docker hub)
			WORKDIR - cd
			RUN - run shell
			EXPOSE - ports
			CMD - command to run without using shell login

		there is a docker python module

		docker run sha_name or appname

		docker run -it python:0.0.1 (runs in interactive mode, which means the output from docker container is redirected to current shell, and can get input from your shell)

		docker build -t $image_name:$version (-t is for tag, which is a name)
			example:
				docker build -t python:0.0.1 . (creates a python named image with version 0.0.1 from the Dockerfile located at current dir .)

		 sudo docker run -d -p 27017-27019:27017-27019 --name mongodb mongo\n (pulls mongodb is not existent and runs it on ports range bla bla )





	kubernetes
		manage docker containers (up 100 and more)
		update docker containers using one command

		a cluster is a control-plane + workers/nodes

		a pod can have 1 or more docker containers running

		a worker is also called a node on which these are running:
			- kubelet process
			- kubelet proxy
			these are responsible for communicating to the master node

		a worker is a physical machine or a virtual machine

		you can have a physical machine with 100 virtual machines so -> you have a physical machine with 100 k8s nodes that can have 100 pods each with 100 docker containers on it => total is 100 * 100 * 100 docker containers => 1 million docker containers just on one machine

		k8s also exposes an API just docker where you can make an unix http request and get data

		k8s is always listerning for changes on the filesystem for te configuration that you gave it => if you made a change to config file (yaml) -> workers are going to be restarted and apply the new settings

		if 1 wokers dies, kubelet tells scheduler manager to reassign the lost pods to active workers





	elasticsearch
		its a search database
		search engine used to search products on metro website

		can pe installed using
			sudo pacman -S elasticsearch

		can be accessed through REST API

		very fast on large datasets




	apache cassandra
		distributed NoSQL database

		has datacenters with nodes in it
			each node communicates with every node
			so its n * (n - 1) / 2 connections between nodes

		a datacenter can handle a petabyte

		each node can handle 4TB of data

		every key in a table accesses a partition

		data is grouped based on a column in nodes in the cluster

		each node has an integer assigned - partition token

		there is a replication factor - RF - meaning that the data is duplicated across the nodes based on that factor to increase redundancy and eliminate all single point of failures

		at write there is consistency level = CL - meaning that if cassandra has to write some data to nodes, it has to wait until the nodes send an OK response for the write process; if the response is BAD, operation is aborted for the other (RF - CL) nodes

		there is cassandra AUR package and `cqlsh` cli tool for querying commands to cassandra service


	postgresql
		exactly like mysql
		relational database
		sql
		easy to use
		fast
		localhost:5432 but its not http, i think is postgres protocol

	kafka
		interaction between website and database
		messaging system
		activity tracking
		metrics from locations
		applications logs
		stream processing
		de-coupling system dependencies
		its like an mqtt broker

	jenkins
		automation tool for jobs:
			build
			test
			deploy
			maintain

		its a java server on localhost:8090, also its a jenkins.service on arch

		has a cli

		has a web interface where you can create jobs for automation

		has accounts for web interface, makes logs about jobs


	gitlab
		same as github

	datadog
		monitoring of everything through SaaS
		has a dashboard website with graphs
		its not free
		has an agent which is open source for linux, but the dashboard is only in cloud and i cant connect datadog source to grafana only if it is paid

	prometheus
		metrics only and not quite
		localhost:9090

		has workers like
			node-exporter which exports metrics (localhost:9100/metrics)

		monitoring tool for k8s pods and docker containers
		monitor a cluster
		metrics collector, listens on localhost and checks availability and many more features
		alertmanager -> slack, email
		data store location for prometheus, local time series database

		get the data with this and visualize with grafana

		cluster node monitoring out of the box


	grafana
		visualization tool for web
		based on time series
		localhost:3000
		needs data sources

	elk-stack
		related with elastic search
		its actually elastic stack - ELC - made of
			elastic search
			logstash
			kibana

			with these you search through logs and perform log analysis

			storing the logs in json format, indexing them, and allowing to perform search on them
		log analysis - logs are unstructured form of data


	web security
		2 factor auth
		https, web site traffic encryption with ssl certificates
		ddos protection, blocking tons of requests
		firewall
		authentication with tokens

		never run a web app in development mode in production environments

		web app code
		the configuration of the web server
		policies for creating and renewing passwords
		client-side code

		XSS - cross site scripting - be aware of that
		sql injections
		Cross-Site Request Forgery (CSRF)

		clickjacking
		direcotry traversal
		file inclusion
		command injection



	
Questions:
- what do you mean by this "you will also be leading postmortems after major incidents" ? what kind of incidents? is this just a methafor?
