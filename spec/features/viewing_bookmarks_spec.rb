# frozen_string_literal: true

feature 'Viewing bookmarks' do
  scenario 'it shows bookmarks' do
    Bookmark.create(title: 'Twitter', url: 'http://www.twitter.com')
    Bookmark.create(title: 'Google', url: 'http://www.google.com')
    visit('/bookmarks')
    expect(page).to have_content('Twitter')
    expect(page).to have_content('Google')
  end

  scenario 'it returns all bookmarks' do
    con = PG.connect dbname: 'bookmark_manager_test'
    con.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com', 'Makers Academy');")
    visit('/bookmarks')
    expect(page).to have_content('Makers Academy')
  end
end
