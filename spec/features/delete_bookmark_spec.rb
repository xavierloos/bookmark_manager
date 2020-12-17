feature "deleting bookmark" do 
  scenario "User can delete a bookmark" do
  visit "/bookmarks"
  click_button('Delete')
  visit "/bookmarks/delete"
  fill_in('title', with: 'Makers Academy')
  click_button('Delete')
  expect(page).to have_no_link("Makers Academy", :href => 'www.makersacademy.com')
  end
end