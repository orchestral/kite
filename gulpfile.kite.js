var dir, elixir = require('laravel-elixir');

/*
 |--------------------------------------------------------------------------
 | Elixir Asset Management
 |--------------------------------------------------------------------------
 |
 | Elixir provides a clean, fluent API for defining some basic Gulp tasks
 | for your Laravel application. By default, we are compiling the Sass
 | file for our application, as well as publishing vendor resources.
 |
 */

dir = require('./paths.js')

elixir.config.sourcemaps = false

elixir(function(mix) {
  mix.copy(dir.html+'/assets/less/components', dir.build.less+'/kite')
    .copy(dir.html+'/assets/img/close.svg', dir.build.img)
});
