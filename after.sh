cd /home/vagrant/kite;
yarn install;
php artisan publish:views orchestra/foundation;
php artisan publish:views orchestra/installer;
php artisan publish:views orchestra/control;
php artisan publish:views orchestra/story;
