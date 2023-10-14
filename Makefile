BUILD_FILES := airflow/docker-compose.yml -f docker-compose.yml
BUILD_FILES_MIN := docker-compose.yml

up: # Bring the stack up
	docker-compose -f ${BUILD_FILES} up -d $(c)

down: # Bring the stack down and remove artifacts
	docker-compose -f ${BUILD_FILES} down -v $(c)

min: # Bring the stack up without Airflow
	docker-compose -f ${BUILD_FILES_MIN} up -d $(c)


min-down: # Bring the minimum stack up without Airflow down
	docker-compose -f ${BUILD_FILES_MIN} down -v $(c)
