require "bookmark"

describe Bookmark do
  describe ".all" do
    it "returns a list of bookmarks" do
      bookmarks = Bookmark.all

      expect(bookmarks).to include "http://makers.tech"
      expect(bookmarks).to include "http://www.destroyallsoftware.com"
      expect(bookmarks).to include "http://www.google.com"
    end
  end
end
