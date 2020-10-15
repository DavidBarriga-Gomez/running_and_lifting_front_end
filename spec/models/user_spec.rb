require 'rails_helper'

RSpec.describe User, type: :model do
  it 'creates or updates itself from an oauth hash' do
    auth = {
      provider: 'google',
      uid: '1234567890',
      info: {
        email: 'foxy@dragonmail.com',
        username: 'Foxy Gomez',
        first_name: 'Foxy',
        last_name: 'Gomez'
      },
      credentials: {
        google_token: 'abcdefg12345',
        google_refresh_token: '12345abcdefg',
        expires_at: DateTime.now
      }
    }

    User.create_from_omniauth(auth)
    new_user = User.first

    # expect(new_user.provider).to eq('google')
    expect(new_user.uid).to eq('1234567890')
    expect(new_user.email).to eq('foxy@dragonmail.com')
    expect(new_user.username).to eq('Foxy Gomez')
    # expect(new_user.first_name).to eq('Foxy')
    # expect(new_user.last_name).to eq('Gomez')
    expect(new_user.google_token).to eq('abcdefg12345')
    expect(new_user.google_refresh_token).to eq('12345abcdefg')
    # expect(new_user.oauth_expires_at).to eq(auth[:credentials][:expires_at])
  end

end
