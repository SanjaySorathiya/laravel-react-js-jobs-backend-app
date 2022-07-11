# Property Jobs Laravel ReactJs App

> Laravel(version 8) backend API that uses the API resources with a ReactJs(version 18) frontend

## Quick Start

``` bash
# Install Dependencies
composer install

# Run Migrations & seeder for few test records
php artisan migrate:refresh --seed

# Add virtual host if using Apache else localhost with port 8000 is default server

Database Name: "backend_laravel"
Please check the "backend_laravel.sql" at root directory .
Postman APIs import file at root "Postman_Api_Import_File" directory. 

For Backend - Laravel : 
in Terminal: 
php artisan serve
path: http://localhost:8000

For Frontend - ReactJS:
in Terminal: 
npm install
npm start
path: http://localhost:3000

```

## Endpoints

### List all Property Jobs
``` bash
GET api/jobs
```
### Add/Log a Job
``` bash
POST api/jobs
```
### Get All Property List
``` bash
GET api/get_property_list
```


```

## App Info

### Author

Sanjay Sorathiya
steel1985@gmail.com

### Version

1.0.0

### License

This project is licensed under the MIT License