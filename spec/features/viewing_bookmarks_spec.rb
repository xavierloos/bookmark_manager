feature "seeing bookmarks" do
  scenario "visiting the index page" do
    visit("/bookmarks")
    expect(page).to have_content "bookmarks"
  end
  scenario "visiting bookmarks page" do
    visit("/bookmarks")
    expect(page).to have_content "bookmarks"
    expect(page).to have_content "http://makers.tech"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end
end
