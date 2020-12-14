require "sinatra/base"

class App < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    "Hello World!"
    #erb(:index)
  end


  
  run! if app_file == $0
end