# require 'rails_helper'

# RSpec.feature "Sign in", :type => :feature do
#   scenario "Sign in users"  do
#     def sign_in
#       visit root_path
#     end
#   end
# end

module Features
  def sign_in
    visit root_path
    fill_in 'Email', with: 'carlitos@example.org'
    click_on 'Sign in'
  end
end
