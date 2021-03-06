[![Build Status](https://travis-ci.org/rhannequin/space-api.svg?branch=master)](https://travis-ci.org/rhannequin/space-api)
[![Coverage Status](https://coveralls.io/repos/github/rhannequin/space-api/badge.svg?branch=master)](https://coveralls.io/github/rhannequin/space-api?branch=master)
[![Code Climate](https://codeclimate.com/github/rhannequin/space-api/badges/gpa.svg)](https://codeclimate.com/github/rhannequin/space-api)

# Space API

## Requirements

- [RVM](https://rvm.io)
- [Ruby](https://www.ruby-lang.org) at least `2.4.6`, `2.6.3` is better
- [Bundler](http://bundler.io)
- [Rails](http://rubyonrails.org) 5.2.3
- [PostgreSQL](https://www.postgresql.org)

## Installation

```sh
$ gem install bundler
$ bundle install
```

### Database

Update settings from `config/database.yml`.

Then create and migrate database :

```sh
$ bundle exec rails db:create
$ bundle exec rails db:migrate
```

## Launch

```sh
$ bundle exec rails server
```

Launches app server on [http://127.0.0.1:3000](http://127.0.0.1:3000).

## Test

```sh
$ bundle exec rspec
```
