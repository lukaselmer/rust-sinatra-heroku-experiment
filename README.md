# Using Rust in Ruby

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

