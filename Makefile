BUILD_FILES := docker-compose.yml -f airflow/docker-compose.yml

up: # Bring the stack up
	docker-compose -f ${BUILD_FILES} up -d $(c)

down: # Bring the stack down and remove artifacts
	docker-compose -f ${BUILD_FILES} down $(c)
	rm -r logs config dags plugins
