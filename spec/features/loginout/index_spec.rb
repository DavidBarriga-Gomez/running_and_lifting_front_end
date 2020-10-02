require 'rails_helper'

RSpec.describe 'log in and log out home page', type: :feature do
  it 'has app name and login button' do
    visit '/'

    expect(page).to have_content('Running And Lifting Web Application')
    expect(page).to have_link('LogIn With GMAIL')
  end
end
