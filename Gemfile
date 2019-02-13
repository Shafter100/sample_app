source 'https://rubygems.org'
ruby '2.4.5'
#ruby-gemset=railstutorial_rails_4_2

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.8'
# Use sqlite3 as the database for Active Record

gem 'bootstrap-sass', '3.2.0.0'
gem 'sprockets', '2.12.5'
gem 'bcrypt', '3.1.6'
gem 'faker'
gem 'will_paginate'
gem 'bootstrap-will_paginate'

gem 'pg', '0.15.1'
group :development, :test do
  #gem 'sqlite3', '1.3.13'
  gem 'guard-spork'
  gem 'spork-rails', '4.0.0'
  gem 'guard-rspec', '4.0.0'
  gem 'guard', '~> 2.0'
  gem 'rspec-rails', '~> 2.14'
  gem 'byebug'
end

group :test do
  gem 'selenium-webdriver', '2.35.1'
  gem 'capybara', '2.1.0'
  gem 'test-unit'

  gem 'factory_bot_rails', '4.8.2'

  gem 'cucumber-rails', '1.4.3', :require => false
  gem 'database_cleaner', '1.5.1'
end

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.2'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '2.1.1'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '4.0.1'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails', '3.1.3'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'
# bundle exec rake doc:rails generates the API under doc/api.
#gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :doc do
  gem 'sdoc', '0.3.20', require: false
end

group :production do
  #gem 'pg', '0.15.1'
  gem 'rails_12factor', '0.0.2'
end


group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end
