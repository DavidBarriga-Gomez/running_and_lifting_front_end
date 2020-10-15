Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['GMAIL_CLIENT_ID'],
                           ENV['GMAIL_CLIENT_SECRET'],skip_jwt: true
end
# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :google_oauth2, ENV["GMAIL_CLIENT_ID"], ENV["GMAIL_CLIENT_SECRET"], {
#     :name => "google",
#     :scope => ['contacts','plus.login','plus.me','email','profile'],
#     :prompt => "select_account",
#     :image_aspect_ratio => "square",
#     :image_size => 50,
#     :access_type => 'offline'
#   }
# end
