#/bin/sh
#
# *************************************************************************** #
# file          : mysql_backup.sh
# usage         : ./mysql_backup.sh
# description   : This script backup MySQL Databases.
# author        : Benjamin Leblond <nebjix@free.fr>
# date          : 2019-01-03
# version       : 2.0
# *************************************************************************** #
#

# Username to access the MySQL server
USERNAME='root'

# Password to access the MySQL server
PASSWORD=''

# List of databases for backup, separated with spaces e.g. "DB1 DB2 DB3"
DB_NAMES="DB1 DB2 DB3"

# Backup directory
BACKUP_DIR="/var/lib/mysql/backup"

date=$(date +%Y-%m-%d)

for db in $DB_NAMES; do
	echo "Backup of Database ${db}"
	mysqldump --user="${USERNAME}" --password="${PASSWORD}" "${db}" | gzip > "${BACKUP_DIR}/${db}_${date}.sql.gz"
done

# Delete backup older than 6 days
find "${BACKUP_DIR}" -maxdepth 1 -mtime +6 -name "*.sql.gz" -delete
