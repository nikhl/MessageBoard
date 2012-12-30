Rails.application.config.middleware.use OmniAuth::Builder do
  # Twitter doesnot provide email through OmniAuth, hence no need to scope email
  provider :twitter,  APP_CONFIG['twitter_id'], APP_CONFIG['twitter_secret']
  provider :facebook, APP_CONFIG['facebook_id'], APP_CONFIG['facebook_secret'], :scope => 'email'
  provider :github, APP_CONFIG['github_id'], APP_CONFIG['github_secret'], :scope => 'email'
  provider :foursquare, APP_CONFIG['foursquare_id'], APP_CONFIG['foursquare_secret'], :scope => 'email'
  provider :linkedin, APP_CONFIG['linkedin_id'], APP_CONFIG['linkedin_secret'], :scope => 'r_emailaddress'
  provider :google, APP_CONFIG['google_id'], APP_CONFIG['google_secret'], :scope => 'email'
  provider :tumblr, APP_CONFIG['tumblr_id'], APP_CONFIG['tumblr_secret']
end
