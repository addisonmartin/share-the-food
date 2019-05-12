# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.3'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.12.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'mini_racer', '~> 0.2.0', platforms: :ruby
# Turbolinks makes navigating your web application faster.
# Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5.2.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.8.0'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '~> 1.4.0', require: false

gem 'bootstrap-sass', '~> 3.4.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0.0'
# Required by bootstrap
gem 'jquery-rails', '~> 4.3.0'
# Required by the bootstrap_form_for in .erb
gem 'bootstrap_form', '~> 4.2.0'

# Used for user authentication
gem 'devise', '~> 4.6.0'

# Used to show donations across multiple pages
gem 'will_paginate', '~> 3.1.0'
# USed to apply bootstrap themes to will_paginate tags.
gem 'will_paginate-bootstrap4', '~> 0.2.0'

# Used for continuous integration
gem 'travis', '~> 1.8.0'

# Helper gem used to verify a .travis.yml file is valid
gem 'travis-lint', '~> 2.0.0'

# Used to audit the Gemfile for security vulnerabilities
gem 'bundler-audit', '~> 0.6.0'

# Used to store environment variables in
# a file not tracked by git, for security.
gem 'dotenv', '~> 2.7.0'

# Used to support image upload stored on Cloudinary's servers.
gem 'activestorage-cloudinary-service', '~> 0.2.0'
gem 'cloudinary', '~> 1.11.0', require: false

# Used by Active Storage for image analysis and manipulation
gem 'mini_magick', '~> 4.9.0'

# A static code analyzer for Ruby.
gem 'rubocop', '~> 0.68.0'

# Used for search engine optimization.
gem 'meta-tags', '~> 2.11.0'

# Used to soft delete donations, so users can view their history.
gem 'discard', '~> 1.1.0'

group :development, :test do
  # Call 'byebug' anywhere in the code to
  # stop execution and get a debugger console
  gem 'byebug', '~> 11.0.0', platforms: %i[mri mingw x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or
  # by calling 'console' anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '~> 3.7.0'
  # Spring speeds up development by keeping your application
  # running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '~> 2.0.0'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # Used to automatically generate entity-relationship diagram
  gem 'rails-erd', '~> 1.5.0'

  # Used to annotate source code with comments describing the datbase schema
  gem 'annotate', '~> 2.7.0'
end

group :test do
  gem 'webdrivers', '~> 3.8.0'
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 3.17.0'
  # Used to provide test coverage.
  gem 'simplecov', '~> 0.16.0', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
