Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['GMAIL_CLIENT_ID'],
                           ENV['GMAIL_CLIENT_SECRET'],skip_jwt: true
end
