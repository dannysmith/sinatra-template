source 'https://rubygems.org'
ruby '2.1.1'

# Sinatra
gem 'sinatra'
gem 'sinatra-contrib'

# Databases
gem 'pg'

# Server
gem 'puma'
gem 'thin'

# Tests
gem 'cucumber'
gem 'rack-test'
gem 'rspec'
gem 'watir-webdriver'
#gem 'codeclimate-test-reporter', group: :test, require: nil

# Front-End
gem 'sass'
gem 'bourbon'
gem 'neat'
gem 'bitters'

group :development do
  gem 'rb-readline'

  gem 'guard'

  if RUBY_PLATFORM.downcase.include?("darwin")
    gem 'rb-fsevent'
    gem 'growl' # also install growlnotify
  end

  gem 'guard-bundler'
  # gem 'guard-shotgun', :git => 'https://github.com/rchampourlier/guard-shotgun.git'
  gem 'guard-rack'
  # gem 'guard-puma'
  gem 'guard-rspec'

  gem 'rack-livereload'
  gem 'guard-livereload'

  gem 'guard-sass'
  gem 'jammit'
  gem 'uglifier'
  gem 'guard-jammit'
  gem 'guard-shell'

  # gem 'guard-migrate' # For ActiveRecord https://github.com/guard/guard-migrate
  gem 'pry'
  gem 'rubocop'

  gem 'binding_of_caller'
	gem 'better_errors'
end
