PostgreSQL Backup Script
@echo off
echo Starting PostgreSQL Backup...
pg_dump -U postgres -F c -f postgres_backup.dump task1
echo PostgreSQL Backup Completed.

PostgreSQL Restore Script
@echo off
echo Starting PostgreSQL Restore...
pg_restore -U postgres -d task1 -F c postgres_backup.dump
echo PostgreSQL Restore Completed.
