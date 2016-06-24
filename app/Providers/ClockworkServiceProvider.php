<?php

namespace App\Providers;

use Illuminate\Contracts\Http\Kernel;
use Clockwork\Support\Laravel\ClockworkMiddleware;
use Clockwork\Support\Laravel\ClockworkServiceProvider as ServiceProvider;

class ClockworkServiceProvider extends ServiceProvider
{
    /**
     * Boot the service provider.
     */
    public function boot()
    {
        $kernel = $this->app->make(Kernel::class);
        $kernel->prependMiddleware(ClockworkMiddleware::class);

        parent::boot();
    }
}
