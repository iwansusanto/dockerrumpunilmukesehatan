# Backup
docker exec CONTAINER /usr/bin/mysqldump -u root --password=adm1n DATABASE > /var/www/html/dev.rik/backend/web/import/ijd.sql

# Restore
cat ijd.sql | docker exec -i CONTAINER /usr/bin/mysql -u root --password=adm1n DATABASE
