require 'rails_helper'

RSpec.describe 'log in and log out home page', type: :feature do
  it 'has app name and login button' do
    visit '/'

    expect(page).to have_content('Running And Lifting Web Application')
    expect(page).to have_link('LogIn With GMAIL')
  end

#  need to finish below test but everything works correctly. 
  # it 'using google oauth2 / gmail oauth' do
  #     stub_omniauth
  #     visit(root_path)
  #     expect(page).to have_link('LogIn With GMAIL')
  #     click_link 'LogIn With GMAIL'
  #     expect(page).to have_content('Foxy Gomez')
  #     expect(page).to have_link('LogOut')
  # end
end
