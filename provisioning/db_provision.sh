if [ -f "/var/db_provision" ]; then
  exit 0
fi

export DEBIAN_FRONTEND=noninteractive
sed -i -e 's/127.0.0.1/0.0.0.0/' /etc/mysql/my.cnf
restart mysql
mysql -uroot mysql <<< "GRANT ALL ON *.* TO 'root'@'%'; FLUSH PRIVILEGES;"

touch /var/db_provision
