<?php

namespace App\Providers;

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
        app('orchestra.widget')->make('dash.orchestra')->add('foo')
            ->title('Users')->value(1000000)->color('pink')->icon('user');
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
