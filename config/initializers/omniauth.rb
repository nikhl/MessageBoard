Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter,  APP_CONFIG['twitter_id'], APP_CONFIG['twitter_secret']
  provider :facebook, APP_CONFIG['facebook_id'], APP_CONFIG['facebook_secret']
  provider :github, APP_CONFIG['github_id'], APP_CONFIG['github_secret']
  provider :foursquare, APP_CONFIG['foursquare_id'], APP_CONFIG['foursquare_secret']
  provider :linkedin, APP_CONFIG['linkedin_id'], APP_CONFIG['linkedin_secret']
  provider :google, APP_CONFIG['google_id'], APP_CONFIG['google_secret']
end
