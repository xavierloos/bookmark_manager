feature "Creating bookmark" do
  scenario "User can create a bookmanrk" do
    visit "/bookmarks/new"
    fill_in("url", :with => "http://www.github.com")
    click_button "Submit"
    expect(page).to have_content "http://www.github.com"
  end
end
