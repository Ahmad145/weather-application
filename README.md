# README

This README document whatever steps are necessary to get the
application up and running.

* Set up environment variables
** run `cp .env.example .env`
** Update your .env file with your environment variables.

* Install dependencies
** run `bundle install`

* Create database
** run `rake db:create`

* Migrate database or Import database
** Here you will need to do one of the following. You may choose step (a) or step (b).

*** Step (a)
**** This step may take nearly half an hour to import all cities data which is provided by Open Weather Map.
**** run `rake db:migrate`
**** run `rake weather_application:create_cities`

*** Step (b)
**** This step may be completed faster then step (a). You dont need to run rake task to create cities data in your database. You can import the database with the file in postgres database.
**** Get exported weather database, and import with the command.