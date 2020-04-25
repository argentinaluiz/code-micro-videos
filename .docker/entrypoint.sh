#!/bin/bash

#On error no such file entrypoint.sh, execute in terminal - dos2unix .docker\entrypoint.sh
cp .env.exemple .env
cp .env.testing.exemple .env.testing
composer install
php artisan key:generate
php artisan migrate

php-fpm
