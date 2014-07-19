# Sinatra Assessment

This application is the private repository for the gSchool Sinatra Assessment.

## Setup

1. Fork and clone this repository
1. Create a new Pivotal Tracker project in the gSchool account. Add instructors as owners.
1. `bundle install`
1. `cp config/database.yml.example config/database.yml`
1. `rake db:create` to create your test and development databases

## Migrations

Create a new migration with this command:

    rake db:create_migration

Run the migrations in the development database using:

    rake db:migrate

Run the migrations in the testing database using

    RACK_ENV=test rake db:migrate

## Getting the app running locally

    rerun rackup

The app will be available at http://localhost:9292/

## Running specs

To run specs, run:

    rspec

The tests will clean up the database before each test run.