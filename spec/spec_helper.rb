# Require test gems
require 'sinatra'
require 'sinatra/contrib'
require 'rack/test'
require 'rspec'
#require 'codeclimate-test-reporter'

#CodeClimate::TestReporter.start

# Require GadGenie
Dir[File.dirname(__FILE__) + '../lib/*'].each {|f| require f}
Dir[File.dirname(__FILE__) + '../models/*'].each {|f| require f}
require File.dirname(__FILE__) + '/../myapp.rb'

# setup test environment
set :environment, :test
set :raise_errors, true
set :logging, false

#specify that the app is a Sinatra app
module SinatraSpecHelpers
  def app
    MyApp
  end
end

RSpec.configure do |config|
  config.color_enabled = true
  config.include Rack::Test::Methods
  config.include SinatraSpecHelpers
end
