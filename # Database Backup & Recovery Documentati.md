# Database Backup & Recovery Documentation

## Overview
This document outlines the process of backing up and restoring the `task1` database in MySQL and PostgreSQL.

---

## 1.Backup Process

### MySQL Backup
To back up the `task1` database in MySQL:
1. Open **Command Prompt**.
2. Run the following command:
   ```bash
   mysqldump -u root -p task1 > task1_backup.sql
   ```
3. Enter the MySQL **password** when prompted.
4. A backup file `task1_backup.sql` is created.

### PostgreSQL Backup
To back up the `task1` database in PostgreSQL:
1. Open **Command Prompt**.
2. Run the following command:
   ```bash
   pg_dump -U postgres -d task1 -F c -f task1_backup.pgsql
   ```
3. Enter the PostgreSQL **password** when prompted.
4. A backup file `task1_backup.pgsql` is created.

---

## 2.Recovery (Restore) Process

### MySQL Restore
To restore the database in MySQL:
1. Open **Command Prompt**.
2. Run:
   ```bash
   mysql -u root -p task1 < task1_backup.sql
   ```
3. Enter the **password** and wait for the restore to complete.

### PostgreSQL Restore
To restore the database in PostgreSQL:
1. Open **Command Prompt**.
2. Run:
   ```bash
   pg_restore -U postgres -d task1 -F c task1_backup.pgsql
   ```
3. Enter the **password** and wait for the restore to complete.

---
