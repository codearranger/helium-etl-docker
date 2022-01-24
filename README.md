# helium-etl-docker
docker-compose for running Helium ETL server
## Installation

### Start the containers
```docker-compose up -d```

### Configure postgres
```dbconfig.sh```

### Import postgres snapshot from https://etl-snapshots.dewi.org/
```import_snapshot.sh```
* This will take a LONG LONG time

## This documentation was used as reference: https://www.disk91.com/2021/technology/internet-of-things-technology/deploying-helium-etl-instance-with-api/
 
