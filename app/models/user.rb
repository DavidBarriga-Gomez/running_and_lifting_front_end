class User < ApplicationRecord
  def self.create_from_omniauth(auth)
    # Creates a new user only if it doesn't exist
    where(email: auth.info.email).first_or_initialize do |user|
      user.uid =auth.uid
      user.username = auth.info.name
      user.email = auth.info.email
      # user.image_url = auth.info.image
    end
  end
end
