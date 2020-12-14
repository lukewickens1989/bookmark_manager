require "sinatra/base"
require './lib/bookmark.rb'

class App < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb(:index)
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb(:bookmarks)
  end



  run! if app_file == $0
end
