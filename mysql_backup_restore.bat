MySQL Backup Script

@echo off
echo Starting MySQL Backup...
mysqldump -u root -p task1 > mysql_backup.sql
echo MySQL Backup Completed.

MySQL Restore Script

@echo off
echo Starting MySQL Restore...
mysql -u root -p task1 < mysql_backup.sql
echo MySQL Restore Completed.

