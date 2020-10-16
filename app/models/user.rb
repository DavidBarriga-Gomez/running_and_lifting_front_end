class User < ApplicationRecord
  validates_presence_of :uid
  validates_presence_of :username
  validates_presence_of :email
  validates_presence_of :google_token
  validates_presence_of :google_refresh_token

  def self.create_from_omniauth(auth)
    # Creates a new user only if it doesn't existnext
    where(email: auth.info.email).first_or_initialize do |user|
      user.uid = auth.uid
      user.username = auth.info.name
      user.email = auth.info.email
      # user.image_url = auth.info.image
    end
  end
# same as above only using for reference
  # def self.update_or_create(auth)
  #   user = User.find_by(uid: auth[:uid]) || User.new
  #
  #   user.attributes = {
  #   # provider: auth[:provider],
  #   uid: auth[:uid],
  #   email: auth[:info][:email],
  #   username: auth[:info][:username],
  #   # first_name: auth[:info][:first_name],
  #   # last_name: auth[:info][:last_name],
  #   google_token: auth[:credentials][:google_token],
  #   google_refresh_token: auth[:credentials][:google_refresh_token],
  #   # oauth_expires_at: auth[:credentials][:expires_at]
  #   }
  #
  #   user.save!
  #   user
  # end
end
