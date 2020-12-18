require "sinatra/base"
require "./lib/bookmark"

class BookmarkManager < Sinatra::Base
  get "/" do
    erb :index
  end

  get "/bookmarks/new" do
    erb :"bookmarks/new"
  end

  post "/bookmarks" do
    Bookmark.create(url: params[:url], title: params[:title])
    redirect "/bookmarks"
  end

  get "/bookmarks" do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  get "/bookmarks/delete" do
    erb :"bookmarks/delete"
  end

  post "/bookmarks/delete" do
    Bookmark.delete(title: params[:title])
    redirect "/bookmarks"
  end

  get "/bookmarks/:id/edit" do
    p @bookmark = Bookmark.find(id: params[:id])
    erb :'bookmarks/edit'
  end

  post '/bookmarks/:id' do
    Bookmark.update(id: params[:id], title: params[:title], url: params[:url])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
