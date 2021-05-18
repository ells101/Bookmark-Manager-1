require 'sinatra'
require 'sinatra/reloader' if development?
require './lib/bookmark'
require 'pg'

class Bookmarks < Sinatra::Base
    configure :development do
        register Sinatra::Reloader
    end

    get '/' do
        erb :'index'
    end

    get '/bookmarks' do
        @bookmarks = Bookmark.all_bookmarks
        erb :'bookmarks'
    end

    run! if app_file == $0
    
end