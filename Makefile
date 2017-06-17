IMAGE_NAME = ansible-test
BUILD_FLAGS = --rm

ENTRYPOINT = bin/bootstrap.sh

docker-build:
	docker build $(BUILD_FLAGS) -t $(IMAGE_NAME) .

docker-install: docker-build
	docker run -t $(IMAGE_NAME) /bin/bash -c "./$(ENTRYPOINT)"

docker-check: docker-build
	docker run -t $(IMAGE_NAME) /bin/bash -c "./$(ENTRYPOINT) --check"
