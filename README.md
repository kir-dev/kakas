# Kakas

[![Build Status](https://travis-ci.org/kir-dev/kakas.svg?branch=master)](https://travis-ci.org/kir-dev/kakas)
[![Maintainability](https://api.codeclimate.com/v1/badges/2fcd2ebbc9a0626fd8cd/maintainability)](https://codeclimate.com/github/kir-dev/kakas/maintainability)

## Setting up the development environment

### Setup database

#### Install postgresql

* `$ apt install postgresql libpq-dev`

#### In your terminal:

* `$ sudo su postgres`
* `$ psql -c 'create user "kakas" with superuser password '\''kakas'\'';'`

### Install nodejs

* `$ apt install nodejs`

### Setup rails

> The sassc gem requires g++ so you may need to install it before executing `bundle install`

* install `ruby 2.5.3` either with asdf (recommended), rbenv or rvm
* `$ gem install bundler`
* `$ gem install rails`

> You may also need to manually install the railies gem to make rails work

* `$ bundle install`

### Install client-side dependencies

* Install yarn on your computer (https://yarnpkg.com/en/docs/install), then run:
* `$ yarn install`

### Init database

* `$ rails db:setup`
* `$ rails db:seed`

### Launch the application

* `$ rails s`
