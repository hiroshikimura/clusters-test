#!/bin/bash

# Replication settings
sed -i -e 's/#wal_level = replica/wal_level = replica/g' /var/lib/postgresql/data/postgresql.conf
sed -i -e 's/#max_wal_senders = 10/max_wal_senders = 10/g' /var/lib/postgresql/data/postgresql.conf
sed -i -e 's/#wal_keep_segments = 0/wal_keep_segments = 256/g' /var/lib/postgresql/data/postgresql.conf
echo "host replication replication 0.0.0.0/0 trust" >> "/var/lib/postgresql/data/pg_hba.conf"

# Create users for replication
psql -U postgres -c "CREATE ROLE replication WITH REPLICATION PASSWORD 'replication' LOGIN"

