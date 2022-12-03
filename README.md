<html>
<body>
<pre>
How to run the the application using the docker
1- composer install 
2- change .env.example to to .env and make sure the DB_HOST=db because it is the name of db container serve
3- docker compose up
then the application will run on 127.0.0.1 you can access it from postman and import the attached collection
you will find 3 api login,search,booking the last two apis need to update Bearer Token in hearders
==========================
you can also run the app on the local machine without docker 
1- composer install 
2- change .env.example to to .env 
3- php artisan serve
==========================
The directory also contain sql dump file and postman collection
=========================
default User data to run the apis
admin@admin.com
password
</pre>
</body>
</html>