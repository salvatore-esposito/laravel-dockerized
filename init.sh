
# clone the laravel latest commit to code directory
git clone https://github.com/laravel/laravel.git ./code

cp ./.config/laravel/.env ./code/.env
cp ./.config/laravel/webpack.mix.js ./code/webpack.mix.js

docker-compose up --build -d

docker-compose exec app composer install
docker-compose exec app php artisan key:generate

docker-compose exec app npm install

docker-compose exec app php artisan serve &
docker-compose exec app npm run watch-poll
docker-compose exec app npm run watch-poll
