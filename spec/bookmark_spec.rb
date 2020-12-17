require "bookmark"
require "database_helpers"

describe Bookmark do
  describe ".create" do
    it 'creates a new bookmark' do
      bookmarks = Bookmark.create(url: 'http://www.testbookmark.com', title: 'Test Bookmark')
      persisted_data = persisted_data(id: bookmarks.id)

      expect(bookmarks).to be_a Bookmark
      expect(bookmarks.id).to eq persisted_data['id']
      expect(bookmarks.title).to eq 'Test Bookmark'
      expect(bookmarks.url).to eq 'http://www.testbookmark.com'
    end
  end
  describe ".all" do
    it 'returns a list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      # Add the test data
      bookmarks = Bookmark.create(url: "http://www.makersacademy.com", title: "Makers Academy")
      Bookmark.create(url: "http://www.destroyallsoftware.com", title: "Destroy All Software")
      Bookmark.create(url: "http://www.google.com", title: "Google")

      bookmarks = Bookmark.all

      expect(bookmarks.length).to eq 3
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.id).to eq bookmarks.first.id
      expect(bookmarks.first.title).to eq 'Makers Academy'
      expect(bookmarks.first.url).to eq 'http://www.makersacademy.com'
    end
  end
end
