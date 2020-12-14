feature 'seeing bookmarks' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content('bookmarks')
  end
end
