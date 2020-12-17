# frozen_string_literal: true

require 'bookmark'

describe Bookmark do

  describe '.create' do
    it 'creates a new bookmark' do
      bookmark = Bookmark.create(url: 'http://www.testbookmark.com', title: 'Test Bookmark')
      expect(bookmark.url).to eq 'http://www.testbookmark.com'
      expect(bookmark.title).to eq 'Test Bookmark'
    end
  end
  describe '.all' do
    it 'returns a list of bookmarks' do   
      # Add the test data
      bookmark = Bookmark.create(url: "http://www.makersacademy.com", title: "Makers Academy")
      Bookmark.create(url: "http://www.destroyallsoftware.com", title: "Destroy All Software")
      Bookmark.create(url: "http://www.google.com", title: "Google")
   
      bookmarks = Bookmark.all
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq 'Makers Academy'
      expect(bookmarks.first.url).to eq 'http://www.makersacademy.com'
     end
   end

   describe '.delete' do
    it 'deletes the given bookmark' do
      bookmark = Bookmark.create(title: 'Makers Academy', url: 'http://www.makersacademy.com')
      p bookmark
      Bookmark.delete(id: bookmark.id)
      p bookmark
      expect(Bookmark.all.length).to eq 0
    end
  end

end