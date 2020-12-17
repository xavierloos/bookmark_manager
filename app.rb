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
    p Bookmark.create(url: params[:url], title: params[:title])
    redirect "/bookmarks"
  end

  get "/bookmarks" do
    p @bookmarks = Bookmark.all
    erb :bookmarks
  end

  get "/bookmarks/delete" do
    erb :"bookmarks/delete"
  end

  post "/bookmarks/delete" do
    p params
    Bookmark.delete(title: params[:title])
    redirect "/bookmarks"
  end

  run! if app_file == $0
end
