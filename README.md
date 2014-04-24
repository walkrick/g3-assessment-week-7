# Sinatra template application

This application is the private repository for the gSchool Sinatra Assessment.

## Development
1. `bundle install`
1. Create a database by running `psql -d postgres -f scripts/create_databases.sql`
1. Run the migrations in the development database using `rake db:migrate`. If you would
like to migrate to a specific version you can do so using this rake task. Run `rake -T` for
details.
1. Run the migrations in the testing database using `RACK_ENV=test rake db:migrate`.
1. `rerun rackup`
    * running rerun will reload app when file changes are detected
1. Run tests using `rspec`. The tests will clean up the database before each test run.
