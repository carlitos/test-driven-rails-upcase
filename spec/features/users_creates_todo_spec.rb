require 'rails_helper'

feature "Users creates todo" do

  scenario "successfully" do
    visit root_path
    click_on "Add new todo"
    page.fill_in "Title", with: "Buy milk"
    click_on "Submit"
    expect(page).to have_css ".todos li", text: "Buy milk"
  end

end
