require "bookmark"

describe Bookmark do
  describe ".create" do
    it "creates a new bookmark" do
      Bookmark.create(url: "http://www.testbookmark.com")

      expect(Bookmark.all).to include "http://www.testbookmark.com"
    end
  end
  describe ".all" do
    it "returns a list of bookmarks" do
      connection = PG.connect(dbname: "bookmark_manager_test")
      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("http://www.google.com")
    end
  end
end
