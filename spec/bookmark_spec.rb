require "bookmark"

describe Bookmark do
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
