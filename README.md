# local-spark-cluster
Create local Spark Cluster for debugging

## Run

### Start Cluster
```shell
docker-compose -f docker-compose.yml up -d
```

### Stop Cluster
```shell
docker-compose -f docker-compose.yml down -v
```

### Go in the master container
```shell
docker exec -it -w /repos spark_master /bin/bash
```
