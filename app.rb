require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/hey' do
    @session = session
  end

  post '/checkout' do
    session["item"] = params["item"]
  end



end
