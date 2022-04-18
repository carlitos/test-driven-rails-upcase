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
    sign_in_as "carlitos@example.org"
  end

  def sign_in_as(email)
    visit root_path
    fill_in 'Email', with: email
    click_on 'Sign in'
  end


end
