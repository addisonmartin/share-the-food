source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.2'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '~> 4.1.20'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'mini_racer', '~> 0.2.4', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '~> 1.4.1', require: false

# Use bootstrap for UI elements
gem 'bootstrap-sass', '~> 3.4.1'

# Use the bootstrap login form
gem 'bootstrap_form', '~> 4.1.0'

# Boostrap is dependent on jquery
gem 'jquery-rails', '~> 4.3.3'

# Devise is used for authentication
gem 'devise', '~> 4.6.1'

# Used to paginate when viewing donations.
gem 'will_paginate', '~> 3.1.6'

# Used to select a date and time.
gem 'momentjs-rails', '~> 2.20.1'
gem 'bootstrap3-datetimepicker-rails', '~> 4.17.47'

group :development, :test do
   # Call 'byebug' anywhere in the code to stop execution and get a debugger console
   gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '~> 3.3.0'
  gem 'listen', '~> 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '~> 2.0.2'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Used to lint .scss stylesheet files during development from Atom text editor.
  gem 'scss_lint', '~> 0.57.1', require: false

end

group :test do
   gem 'rspec-rails', '~> 3.8.2'
   gem 'factory_girl_rails', '~> 4.9.0'
   gem 'rails-controller-testing', '~> 1.0.4'
   gem 'headless', '~> 2.3.1'
   # Adds support for Capybara system testing and selenium driver
   gem 'capybara', '~> 3.14.0'
   gem 'capybara-webkit', '~> 1.15.1'
   gem 'database_cleaner', '~> 1.7.0'
   gem 'selenium-webdriver', '~> 3.141.0'
   # Easy installation and use of chromedriver to run system tests with Chrome
   gem 'chromedriver-helper', '~> 2.1.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
