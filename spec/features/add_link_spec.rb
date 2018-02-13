feature 'can add link to DB' do
  scenario 'add link to DB' do
    visit('/')
    click_button("Add link")
    fill_in("new-link", with: "www.marca.com")
    click_button("Submit")
    expect(page).to have_content("www.marce.com")
  end
end