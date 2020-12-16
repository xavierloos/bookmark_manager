require "pg"

class Bookmark
  def self.all
    ENV["ENVIRONMENT"] == "test" ? connection = PG.connect(dbname: "bookmark_manager_test") : connection = PG.connect(dbname: "bookmark_manager")

    result = connection.exec("SELECT * FROM bookmarks")
    result.map { |bookmark| bookmark["url"] }
  end
  def self.create(url:)
    ENV["ENVIRONMENT"] == "test" ? connection = PG.connect(dbname: "bookmark_manager_test") : connection = PG.connect(dbname: "bookmark_manager")

    connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
  end
end
