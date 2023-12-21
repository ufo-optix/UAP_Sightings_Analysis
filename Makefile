
dump: stop
	docker run --name=uadb -d -e POSTGRES_PASSWORD=testtest -p 5432:5432 -v C:\Users\faust\code\UFO_data\out:/tmp --restart=always alien-db
	timeout 5
	docker exec -it uadb bash dump.sh

build:
	docker build . -t alien-db

stop:
	docker container stop uadb
	docker container remove uadb