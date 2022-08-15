#!/bin/bash

# Database shutdwon
/usr/lib/postgresql/12/bin/pg_ctl -D "/var/lib/postgresql/data" -m fast -w stop
sleep 20

# Delete database directories
rm -rf /var/lib/postgresql/data/*

# Master database backup 
pg_basebackup -R -h master -U replication -D /var/lib/postgresql/data -P

# Replication settings
sed -i -e 's/#hot_standby = on/hot_standby = on/g' /var/lib/postgresql/data/postgresql.conf

# Database startup
/usr/lib/postgresql/12/bin/pg_ctl -D "/var/lib/postgresql/data" -w start

