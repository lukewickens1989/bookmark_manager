feature "Viewing bookmarks" do

  scenario "it shows bookamrks" do
    visit('/bookmarks')
    expect(page).to have_content("Bookmarks:")
  end

  scenario "it returns all bookmarks" do
    bookmarks = Bookmark.all
    visit('bookmarks')
    expect(page).to have_content(["bob"])
  end
  
end
