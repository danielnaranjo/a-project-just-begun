#!/bin/sh
# Name (ex. my-awesome-blog)
PROJECT="$1" 
# Check requires
php -v;composer -v;node -v;npm -v
# Composer is required
composer create-project --prefer-dist laravel/laravel "$PROJECT"
# Get into folder(ex. /my-awesome-blog/)
cd "$PROJECT" || exit
# Create APP KEY
php artisan key:generate
# Install dependencies
composer update
# Tuning Laravel's installation
composer require algolia/algoliasearch-client-php barryvdh/laravel-cors jenssegers/date kris/laravel-form-builder laravel/scout laravel/socialite laravelcollective/html nesbot/carbon pusher/pusher-php-server sentry/sentry-laravel webpatser/laravel-uuid 
# Install Node
npm install
# Run server
php artisan serve
