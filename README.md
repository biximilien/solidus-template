# Solidus Template

This is an opinionated template with my personnal preferences of a Ruby on Rails
application with Solidus pre-installed and configured for quick use
out-of-the-box.

What is included:
* Views are converted to HAML template
* Replaced the frontend with Bulma CSS
* FontAwesome Free is pre-configured
* RSpec is pre-installed

## Things to note

I prefer to override views rather than use `deface`, you may expect all plugins
that depend on `deface` not to be compatible with my template. This is usually
not too much of a problem if you like getting your hands dirty, as you can
simply take the HTML fragments in `overrides` and place them in corresponding
views templates. This is my preference when dealing with Solidus extensions.

## Ruby Version

This template targets Ruby version 2.5.7 but may work with other versions.

## Database

This template targets the PostgreSQL database, ensure you have a working
instance of PostgreSQL.

## Dependencies

My template is customized to use `bulma` and `fontawesome`.

Run the following command to install ruby gems and javascript dependencies.

```sh
$ bundle install
$ yarn install
```

A working installation of `imagemagick` is required to use Solidus.

## How to use

### Create a template on Github or clone the template

Clone the template

```sh
$ git clone git@github.com:biximilien/solidus-template.git MyAmazingNewStore
```

### Rename the application

Find and replace the project name.

```sh
$ find . -type f -exec sed -i 's/SolidusTemplate/MyAmazingNewStore/g' {} \;
$ sed -i 's/SolidusTemplate/MyAmazingNewStore/g' config/application.rb
```

### Update the repository

Create a new repository for your awesome project and update the git remotes.

```sh
$ git remote set-url origin git@github.com:biximilien/MyAmazingNewStore.git
```

## Database

To setup the database, run :

```sh
$ bundle exec rake db:create
$ bundle exec rake db:migrate
$ bundle exec rake db:seed
```

To setup the database with sample data just run :

```sh
$ bundle exec rake spree_sample:load
```

## Tests

To execute the test suite, run :

```sh
$ bundle exec rspec
```

Or to execute individual tests, run :

```sh
$ bundle exec rspec spec/model/foobar_spec.rb
```
