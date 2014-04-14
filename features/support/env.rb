require 'bundler/setup'
require 'sinatra/base'
require 'sinatra/contrib'
require 'rspec'
require 'rspec-expectations'
require 'watir-webdriver'
require 'pry'
#require 'coveralls'

# Require GadGenie
Dir[File.dirname(__FILE__) + '../../lib/*'].each {|f| require f}
Dir[File.dirname(__FILE__) + '../../models/*'].each {|f| require f}

require_relative '../../myapp.rb'

#Coveralls.wear!
