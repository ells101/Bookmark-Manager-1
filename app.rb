require 'sinatra'
require 'sinatra/reloader' if development?

class Bookmarks < Sinatra::Base
    configure :development do
        register Sinatra::Reloader
    end

end