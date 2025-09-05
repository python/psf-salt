DOCKER_IMAGE_NAME := docs-server
DOCKER_CONTAINER_NAME := docs-container

.PHONY: docs-build docs-clean docs-serve

docs-build:
	@echo "=> Building Docker image for documentation"
	docker build -t $(DOCKER_IMAGE_NAME) -f Dockerfile .

docs-clean:
	@echo "=> Cleaning documentation build assets"
	docker run --rm -v $(PWD)/docs:/app/docs $(DOCKER_IMAGE_NAME) rm -rf /app/docs/_build
	@echo "=> Removed existing documentation build assets"

docs-serve: docs-build
	@echo "=> Serving documentation"
	docker run --name $(DOCKER_CONTAINER_NAME) -p 8000:8000 -v $(PWD)/docs:/app/docs $(DOCKER_IMAGE_NAME)

docs-stop:
	@echo "=> Stopping documentation server"
	docker stop $(DOCKER_CONTAINER_NAME)
	docker rm $(DOCKER_CONTAINER_NAME)