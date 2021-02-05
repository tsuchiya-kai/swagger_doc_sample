.PHONY: up
## up: docker-compose up 
up:
	docker-compose up -d --build
	@echo "Building..."
	@echo "swagger-editor http://localhost:19881/"
	@echo "swagger-ui http://localhost:19882/"
	@echo "swagger-api http://localhost:19883/"

.PHONY: stop
stop: ## alias of 'docker-compose stop' : ## make stop
	docker-compose stop