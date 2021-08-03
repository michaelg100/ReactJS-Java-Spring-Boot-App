# (optional) start via bash script
```
bash ./setupdb.sh
```

# run via docker
```
docker run --name mysql-db -p3306:3306 -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql:tag
```

# exec into the container to add user
```
docker exec -t -i mysql-db /bin/bash
```

# open mysql
```
mysql -u root -p
```

# enter the password after MYSQL_ROOT_PASSWORD
```
my-secret-pw
```

# you should now be in mysql as root, create a new user that we will access from the app
```
CREATE USER 'mike'@'localhost' IDENTIFIED BY 'password';
```

# create database
```
CREATE DATABASE testdb;
```

# grant privelages to the new user
```
GRANT ALL ON testdb.* TO 'mike'@'localhost';
```

# to exit mysql and then docker
```
exit

exit
```
