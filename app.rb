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
    p Bookmark.create(url: params[:url])
    # url = params["url"]
    # connection = PG.connect(dbname: "bookmark_manager_test")
    # connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
    redirect "/bookmarks"
  end

  #   post "/adding" do
  #     p "this is the params" + params
  #     p @title = params["title"]
  #     p url = params[:url]

  #     connection = PG.connect(dbname: "bookmark_manager_test")
  #     connection.exec("INSERT INTO bookmarks (url) VALUES ('#{url}')")
  #     # @bookmark = Bookmark.create(@title, @url)
  #     # @bookmark = Bookmark.instance
  #     # @bookmark.add_entry
  #     redirect "/bookmarks"
  #   end

  #   before do
  #     @bookmark = Bookmark.instance
  #   end

  get "/bookmarks" do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  run! if app_file == $0
end
