# Kakas

[![Build Status](https://travis-ci.org/kir-dev/kakas.svg?branch=master)](https://travis-ci.org/kir-dev/kakas)

## Setting up the development environment

### Setup database

#### Install mysql

* `$ apt install mysql-server libmysqlclient-dev`

#### In a mysql terminal:

* `> CREATE DATABASE kakas_development;`
* `> CREATE DATABASE kakas_test;`
* `> GRANT ALL PRIVILEGES ON kakas_development.* TO 'rails_user'@'localhost' IDENTIFIED BY 'password';`

### Install nodejs

* `$ apt install nodejs`

### Setup rails

> The sassc gem requires g++ so you may need to install it before executing `bundle install`

* install `ruby 2.5.3` either with asdf (recommended), rbenv or rvm
* `$ gem install bundler`
* `$ gem install rails`

> You may also need to manually install the railies gem to make rails work

* `$ bundle install`

* `$ rails db:setup`

> It may display an error because of how travis is connected to the test database.
> If you don't want to run tests locally, you can ignore this

### Launch the application

* `$ rails s`
