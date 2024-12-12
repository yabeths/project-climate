# IMPORTANT: this should be updated so it performs all the operations
# to reset the Climate Project database. This should include dropping any
# existing data, creating tables from nothing, and populating the tables
# with any sample data needed to test queries.

dropdb --if-exists ${PGDATABASE-${PGUSER}}
createdb
psql -f create.sql
psql -f Insert_Data.sql
## Add more steps here:
# psql -f source-file.sql
