# Using Rust in Ruby, Deployed to Heroku with Sinatra

## Setup & Compilation

* Install rust & cargo
* Install bundler

```
bundle install
(cd calculator && cargo build --release)
```

## Tests

```
rspec
```

## Run Sinatra App

```
open 'http://localhost:4567'
ruby rustapp.rb
```

## Compilation and Platforms

The shared library has to be compiled for your CPU architecture. On mac osx the
Rust code is comiled to libcalculator.dylib and on linux it is compiled to
libcalculator.so. It should compile to libcalculator.dll on Windows, but the
ruby code will not work there unless you edit app/fast_calculator.rb.

## Deployment

The app has been tested under mac osx and linux. It can be deployed directly to
heroku:

* Install the heroku toolbelt

```
heroku create
git push heroku master
heroku run rspec
heroku open
```

Remember to compile and commit libcalculator.so for linux before pushing to
Heroku.

## Demo

It may take a while for heroku to start the VM (e.g. 30 seconds). Be patient.

https://rocky-headland-3541.herokuapp.com/

