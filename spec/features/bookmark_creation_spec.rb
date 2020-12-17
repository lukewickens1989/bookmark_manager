# frozen_string_literal: true

feature 'Creating New Bookmarks' do
  scenario 'testing intial implementation' do
    visit('/bookmarks/new')
    expect(page).to have_content('Bookmark Creation')
  end

  scenario 'using a form to input new bookmark information' do
    visit('/bookmarks/new')
    expect(page).to have_field('title')
    expect(page).to have_field('url')
    expect(page).to have_button('submit')
  end

  scenario 'user can add a bookmark to the bookmark manager' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://www.testbookmark.com')
    fill_in('title', with: 'Test Bookmark')
    click_button('submit')

    expect(page).to have_link('Test Bookmark', href: 'http://www.testbookmark.com')
  end
end
