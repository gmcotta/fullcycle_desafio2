#!/bin/bash

composer install
cp .env .env.example
php artisan key:generate
php artisan migrate
php-fpm
