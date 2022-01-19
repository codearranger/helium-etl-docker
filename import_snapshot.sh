#!/bin/bash

#docker run --network etl_etl -e "DATABASE_URL=postgresql://etl:password@postgres:5432/helium_blockchain" helium/etl:1.1.135 migrations setup

docker exec postgres-etl pg_restore -v -d helium_blockchain -W -j4 -U etl -Fd /var/data/root/export/database

