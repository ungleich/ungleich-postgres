#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" -d "$POSTGRES_DB" < /dhcpdb_create.pgsql
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" -d "$POSTGRES_DB" -c "ALTER DATABASE ${POSTGRES_DB} OWNER TO ${POSTGRES_USER}"