# MyApp main Application class.
class MyApp < Sinatra::Base
  helpers Sinatra::ContentFor


  # CONFIGURATION --------------------------------------------

  configure :development do
    require 'better_errors'
    use BetterErrors::Middleware
    BetterErrors.application_root = __dir__
  end

  configure :production do
    require 'newrelic_rpm'
  end




  # ROUTES --------------------------------------------------

  get '/' do
    erb :index
  end

  get '/hello' do
  	status 200
  	'Hello World'
  end
end
