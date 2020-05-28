feature "Check homepage text" do
  scenario "Visiting homepage" do
    visit('/')
    expect(page).to have_content("Testing infrastructure working!")
  end
end