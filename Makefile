.PHONY: build
build:
	docker build -t guanw0826/docker-test .
	docker run -dit guanw0826/docker-test

	

# docker exec -it 34f1 /bin/bash