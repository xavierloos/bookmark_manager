require "sinatra/base"
require "./lib/bookmark"

class BookmarkManager < Sinatra::Base
  enable :sessions
  get "/" do
    p params
    erb :index
  end

  get "/bookmarks/new" do
    p params
    erb :"bookmarks/new"
  end

  post "/bookmarks" do
    p params
    p Bookmark.create(url: params[:url],title: params[:title])
    redirect "/bookmarks"
  end

  get "/bookmarks" do
    p @bookmark = Bookmark.all
    erb :bookmarks
  end

  run! if app_file == $0
end
