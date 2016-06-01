echo "Setting up /var/www link to /vagrant/work"

if [ -f "/var/vagrant_provision" ]; then
  exit 0
fi

apt-get install -y apache2 >/dev/null 2>&1
rm -rf /var/www
ln -fs /vagrant/work /var/www

touch /var/vagrant_provision
