<?php

namespace App\Providers;

use App\User;
use Illuminate\Support\ServiceProvider;
use Orchestra\Extension\Traits\DomainAware;

class AppServiceProvider extends ServiceProvider
{
    use DomainAware;

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        $orchestra = orchestra();

        $orchestra->when('orchestra::/', function () use ($orchestra) {
            $orchestra->widget('dash')->add('users')->value(User::count())->icon('user')->title('Users');
        });
    }

    /**
     * Register any application services.
     *
     * This service provider is a great spot to register your various container
     * bindings with the application. As you can see, we are registering our
     * "Registrar" implementation here. You can add your own bindings too!
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
