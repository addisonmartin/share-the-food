# Share the Food

Share the Food is a web app that aims to connect those who want food, with those who don't want to waste food. Anyone with extra food can create an account and upload a donation. Anyone who wants food, without needing an account, can view all the donations nearby.

**Table of Contents:**
* [Setting up Development Environment](https://github.com/addisonmartin/share-the-food/blob/master/README.md#setting-up-development-environment)
* [Testing](https://github.com/addisonmartin/share-the-food/blob/master/README.md#testing)
* [Deployment](https://github.com/addisonmartin/share-the-food/blob/master/README.md#deployment)
* [Built Using](https://github.com/addisonmartin/share-the-food/blob/master/README.md#built-using)
* [Contributing](https://github.com/addisonmartin/share-the-food/blob/master/README.md#contributing)
* [License](https://github.com/addisonmartin/share-the-food/blob/master/README.md#license)

## Setting up Development Environment

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on the production environment.

### Prerequisites

You will need:
* Git.
* Ruby, or a Ruby language version manager such as rbenv.
* Ruby on Rails.

### Installation

First, clone the repository onto your local machine.

```
git clone https://github.com/addisonmartin/share-the-food.git
```

Navigate into the project's root folder.

```
cd share-the-food/
```

Install all the project's dependencies (Rubygems) using Bundler.

```
bundle install
```

Create the database on your local machine.

```
bundle exec rake db:create
```

Migrate the database schema into the newly created database.

```
bundle exec rake db:migrate
```

Seed some sample data into the newly created database.

```
bundle exec rake db:seed
```

### Launching the Server

Navigate into the project's root folder.

```
cd share-the-food/
```

Start the server.

```
rails server
```

Open your web browser, and visit the site.

```
localhost:3000
```

Press crtl+c to stop the server.


## Testing

### Running the Tests

Navigate into the project's root folder.

```
cd share-the-food/
```

Run all the tests.

```
rails test
```

### Continuous Integration

Continuous integration is performed by Travis CI. [It can be found here.](https://travis-ci.org/addisonmartin/share-the-food)

## Deployment

This project is deployed on a Heroku dyno. Deployment happens after each push to the master branch, where the Travis CI tests also all passed. As such, branch protections have been setup for master. There is no need to manually deploy to Heroku. Simply checkout a new branch, make your changes, and submit a pull request into master. If all tests pass and your changes are approved, then your changes will be deployed.

## Built Using

* [Ruby](https://www.ruby-lang.org/en/) - The Language
* [Ruby on Rails](https://rubyonrails.org/) - The Web Framework
* [Github](https://github.com/) - Used for version control, and project organization and coordination.
* [Travis CI](https://travis-ci.org/) - Used for continuous integration.
* [Heroku](https://www.heroku.com/) - Used to host the production server.

## Contributing

Contributions are welcomed, and needed! All contributions must be submited through a pull request on Github. All changes will be published under the GNU GPU v3 license, as this is what the project is licensed under.

Also see the list of [project contributors.](https://github.com/addisonmartin/share-the-food/contributors)

## License

This project is licensed under the GNU GPL v3 License - see the [LICENSE](https://github.com/addisonmartin/share-the-food/blob/master/LICENSE) file for details
