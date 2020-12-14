# frozen_string_literal: true

feature 'Successful Implementation' do
  scenario 'testing intial implementation' do
    visit('/')
    expect(page).to have_content('Hello World!')
  end
end
