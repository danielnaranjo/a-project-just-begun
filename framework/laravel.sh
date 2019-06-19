# Name
PROJECT = $1 (ex. my-awesome-blog)
# Check requires
which php && which composer && which node && which npm && node -v; npm -v;
# Composer is required
composer create-project --prefer-dist laravel/laravel $PROJECT
# Get into folder
cd $PROJECT (ex. /my-awesome-blog/)
# Create APP KEY
php artisan key:generate
# Install dependencies
composer update
# Install Node
npm install
# Run server
php artisan serve
