BUILD_FILES := docker-compose.yml airflow/docker-compose.yml

start:
	docker-compose -f ${BUILD_FILES} build