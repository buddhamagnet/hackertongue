source 'https://rubygems.org'
# initialy built gem locally on local gem server
# source "file:///Users/buddhamagnet/Code/OSS/rb/repo"

gem 'rails', '4.0.2'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'zurb-foundation'
gem 'hublingo', '~> 0.1.4'
gem 'pg'
gem 'kaminari'

group :development, :test do
  gem 'sqlite3'
  gem 'dotenv-rails'
end

group :development do
  # generates model schema inline.
  gem 'annotate'
  # replaces the default Rails error page.
  gem 'better_errors'
  gem 'binding_of_caller'
  # identify n + 1 queries.
  gem 'bullet'
  gem 'debugger'
  # code analyzer.
  gem 'flay'
  # mini view framework for the console.
  gem 'hirb'
  # expose a local web server to the internet.
  # this is down right now, using ngrok instead.
  # gem 'localtunnel'
  # rake tasks that scan models for potential indices.
  gem 'lol_dba'
  # smtp server that catches emails for display.
  gem 'mailcatcher'
  # chrome extension for Rails development.
  gem 'meta_request'
  gem 'pry'
  gem 'pry-doc'
  # displays a speed badge for HTML pages.
  gem 'rack-mini-profiler'
  # generates footnotes containing application information.
  gem 'rails-footnotes', '>= 3.7.5.rc4'
  # code metric tool.
  gem 'rails_best_practices'
  # code smell detector.
  gem 'reek'
  # command line tool for analyzing request logfiles.
  gem 'request-log-analyzer'
  # automatic loss reduction for all images.
  gem 'smusher'
  # BDD STW
  gem 'rspec-rails'
  # the awesome guard
  gem 'guard-rspec'
  gem 'guard-livereload'
end

group :test do
  gem 'cucumber-rails', require: false
  gem 'capybara'
  gem 'database_cleaner'
  gem 'email_spec'
  gem 'factory_girl'
end