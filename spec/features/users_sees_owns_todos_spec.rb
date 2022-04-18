require 'rails_helper'


feature "Users sees own todos" do
  scenario "doesn't see others todos" do
    Todo.create!(title: 'Buy milk', email: 'carlitos@example.org')

    sign_in_as "carlitos_dos@example.org"

    expect(page).not_to have_css ".todos li", text: "Buy milk"
    
  end
end
