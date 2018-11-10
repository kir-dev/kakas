[![Build Status](https://travis-ci.org/kir-dev/kakas.svg?branch=master)](https://travis-ci.org/kir-dev/kakas)

# Kakas

## Instructions for development

### Setup database
In a mysql terminal:

* `CREATE DATABASE kakas_development;`
* `CREATE DATABASE kakas_test;`
* `GRANT ALL PRIVILEGES ON kakas_development.* TO 'rails_user'@'localhost' IDENTIFIED BY 'password';`

In a shell:
* `apt install libmysqlclient-dev`

### Install nodejs
* `apt install nodejs`

### Setup rails

> The sassc gem requires g++ so you may need to install it before executing `bundle install`

* install ruby 2.5.3
* `gem install bundler`
* `gem install rails`
* `bundle install`

> You may also need to manually install the railies gem

* `rails db:setup`

> It may display an error because of how travis is connected to the test db
> If you don't want to run tests locally, you can ignore this

### Launch the application

* `rails s`
