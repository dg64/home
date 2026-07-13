# Installation

## PHP

- `sudo port install php` a specific version is installed; on Airbook 12 is php95
- `sudo port select --list php` shows which version of php is installed
- `sudo port select --set php php85` set as active a specific version of php
- `sudo port install php-apache2handler` install the php module for apache
- `sudo port install php85-mysql` install mysqli extension for php
- `cp /opt/local/etc/php85/php.ini-development /opt/local/etc/php85/php.ini`
- edit the php.ini file end uncomment the line "extension=mysql"; change with "extension=<path-to-mysqli.so"

## Apache

- `brew install httpd`
- `brew service start httpd`
- root in /usr/local/var/www
- config in /usr/local/etc/httpd/httpd.conf
- http://localhost:8080
- enable mod_rewrite

## Mysql

- Download from mysql.com
- admin user root/toor1964
- manage startup server in system settings

## phpmyadmin

- `brew install phpmyadmin`

- add to /usr/local/etc/httpd/httpd.conf
    > # phpmyadmin settings
    > Alias /phpmyadmin /usr/local/share/phpmyadmin
    > <Directory /usr/local/share/phpmyadmin/>
    >   DirectoryIndex index.php
    >    Options Indexes FollowSymLinks MultiViews
    >    AllowOverride All
    >    <IfModule mod_authz_core.c>
    >       Require all granted
    >    </IfModule>
    >    <IfModule !mod_authz_core.c>
    >       Order allow,deny
    >       Allow from all
    >    </IfModule>
    > </Directory>
