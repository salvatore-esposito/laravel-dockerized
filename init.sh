
# clone the laravel latest commit to code directory
git clone https://github.com/laravel/laravel.git ./code

docker-compose up --build -d
docker-compose exec app composer install
docker cp ./.config/laravel/.env app:/var/www/html/.env
docker-compose exec app php artisan key:generate

#to start php laravel internal server on all ip numbers digit:
#docker-compose exec app php artisan serve --host=0.0.0.0
