sc:
	docker-compose -f docker-compose.yml up -d

sm:
	docker exec -it -w /repos spark_master /bin/bash

scr:
	docker-compose -f docker-compose.yml down -v