# frozen_string_literal: true

require 'sinatra/base'
require './lib/bookmark'

class App < Sinatra::Base
  enable :sessions, :method_override
  set :session_secret, 'super secret'

  get '/' do
    erb(:index)
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb(:bookmarks)
  end

  get '/bookmarks/new' do
    erb(:new_bookmarks)
  end

  post '/bookmarks' do
    Bookmark.create(title: params['title'], url: params['url'])
    redirect '/bookmarks'
  end

  delete '/bookmarks/:id' do
    Bookmark.delete(id: params[:id])
    redirect '/bookmarks'
  end

  run! if app_file == $PROGRAM_NAME
end
