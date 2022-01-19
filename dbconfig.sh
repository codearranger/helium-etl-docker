#!/bin/bash

docker exec -it postgres-etl psql postgres etl -c 'ALTER SYSTEM SET shared_buffers = "4GB";'
docker exec -it postgres-etl psql postgres etl -c 'ALTER SYSTEM SET work_mem = "4GB";'
docker exec -it postgres-etl psql postgres etl -c 'ALTER SYSTEM SET maintenance_work_mem = "4GB";'
docker exec -it postgres-etl psql postgres etl -c 'ALTER SYSTEM SET fsync = off;'
docker exec -it postgres-etl psql postgres etl -c 'ALTER SYSTEM SET checkpoint_timeout = "120min";'
docker exec -it postgres-etl psql postgres etl -c 'ALTER SYSTEM SET max_wal_size = "2GB";'
docker exec -it postgres-etl psql postgres etl -c 'ALTER SYSTEM SET max_connections = 500;'
docker exec -it postgres-etl psql postgres etl -c 'ALTER SYSTEM SET random_page_cost = 1.0;'

docker restart postgresl-etl

sleep 15

docker exec postgres-etl cat /var/lib/postgresql/data/postgresql.auto.conf
