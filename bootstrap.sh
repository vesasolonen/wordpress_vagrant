# Wordpress
sudo apt-get update
sudo apt-get upgrade
apt-get install apache2
systemctl enable apache2
apt-get install -y php php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip php-mysql unzip
apt-get install -y mysql-server
echo -e "n\n\nRoot66\nRoot66\ny\ny\ny\ny\n" | sudo mysql_secure_installation
echo -e "CREATE DATABASE wordpress;\n" | sudo mysql
echo -e "CREATE USER admin_user;\n" | sudo mysql
echo -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'admin_user'@'localhost' IDENTIFIED BY 'P#q3dJ/4';\n" | sudo mysql
echo -e "FLUSH PRIVILEGES;\n" | sudo mysql
echo -e "exit;\n" | sudo mysql
cd /var/www/html
wget -c http://wordpress.org/latest.zip
unzip latest.zip
sudo chown -R www-data:www-data wordpress
rm latest.zip
ln -s /etc/apache2/sites-enabled/your_domain.com.conf /etc/apache2/sites-available/your_domain.com.conf

# Node.js asennus Ubuntuun
# curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
# sudo apt-get install -y nodejs
# sudo mysql -u root -p