source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.1'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Use Active Storage variant
gem 'image_processing', '~> 1.2'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]

  # Rubocop is used for Ruby static code analysis.
  gem 'rubocop'
  # Rubocop Rails is the Rubocop extension ("cop") for Ruby on Rails.
  gem 'rubocop-rails'
  # Rubocop Performance is the Rubocop extension ("cop") for performance.
  gem 'rubocop-performance'
  # Rubocop Thread Safety is the Rubocop extension ("cop") for thread safety.
  gem 'rubocop-thread_safety'
  # Faker is used to generate realistic sample data for testing and development.
  gem 'faker'
  # RSpec is used as the testing framework. (As opposed to the default, Minitest).
  gem 'rspec-rails'
  # Factory Bot is used to handle model instances during tests. (As opposed to the default, fixtures).
  gem 'factory_bot_rails'
  # SimpleCov is used to calculate and report test coverage.
  gem 'simplecov'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # Better Errors is used to make error messages interactive and better.
  gem 'better_errors'
  # Binding of Caller is required by Better Errors to show the call stack on error pages.
  gem 'binding_of_caller'
  # Rack Mini Profiler is used to display an informative speed badge on the top of each page.
  gem 'rack-mini-profiler'
  # Memory profiler is used by Rack Mini Profiler.
  gem 'memory_profiler'
  # Flamegraph is used by Rack Mini Profiler.
  gem 'flamegraph'
  # Stack Prof is used by Rack Mini Profiler.
  gem 'stackprof'
  # Bullet is used to detect unoptimized N+1 database queries.
  gem 'bullet'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
