# Sinatra Assessment

This application is the private repository for the gSchool Sinatra Assessment.

## Setup

To get this app setup, you need to:

1. Install all the necessary gems
1. Create the databases
1. Create your own branch with

To do so, run the following commands:

    bundle install
    psql -d postgres -f scripts/create_databases.sql
    git checkout -b `whoami`

## Pushing your branch

    git push origin `whoami`

## Migrations

Run the migrations in the development database using:

    rake db:migrate

If you would like to migrate to a specific version you can do so using this rake task. For details run:

    rake -T

Run the migrations in the testing database using

    RACK_ENV=test rake db:migrate

## Getting the app running locally

    rerun rackup

## Running specs

To run specs, run:

    rspec

The tests will clean up the database before each test run.