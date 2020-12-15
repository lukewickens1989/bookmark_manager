# frozen_string_literal: true

feature 'Viewing bookmarks' do  
  scenario 'it shows bookmarks' do
    Bookmark.create(url: "http://www.twitter.com")
    Bookmark.create(url: "http://www.google.com")
    visit('/bookmarks')
    expect(page).to have_content('http://www.twitter.com')
    expect(page).to have_content('http://www.google.com')
  end

  scenario 'it returns all bookmarks' do
    con = PG.connect dbname: 'bookmark_manager_test'
    con.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
    visit('/bookmarks')
    expect(page).to have_content('http://www.makersacademy.com')
  end
end
