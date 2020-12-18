feature "Creating bookmark" do
  scenario "User can create a bookmanrk" do
    visit "/bookmarks/new"
    fill_in('url', with: 'http://www.testbookmark.com')
    fill_in('title', with: 'Test Bookmark')
    click_button('Submit')

    expect(page).to have_link('Test Bookmark', href: 'http://www.testbookmark.com')
  end

  scenario "user cannot add invalid url" do
    visit '/bookmarks/new'
    fill_in('url', with: 'httpwww.testbookmark.com')
    fill_in('title', with: 'Test Bookmark')
    click_button('Submit')

    expect(page).not_to have_content "Test Bookmark"
    expect(page).to have_content "INVALID URL"
  end
end
