
# clone the laravel latest commit to code directory
git clone https://github.com/laravel/laravel.git ./code

# copy some file to laravel directory to enabling the system
docker cp ./code/.env.example app:/var/www/html/.env
docker cp ./.config/laravel/.htaccess app:/var/www/html/.htaccess

#start service and add dependencies and add a key to laravel
docker-compose up --build -d
docker-compose exec app composer install
docker-compose exec app chown -R www-data: .
docker-compose exec app php artisan key:generate
