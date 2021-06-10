OmniAuth.config.logger = Rails.logger
OmniAuth.config.allowed_request_methods = [:post] # recently added because of vulnerability
#************************************************
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'],ENV['GOOGLE_CLIENT_SECRET'],
         { :name => "google_oauth2", :scope => ['https://www.googleapis.com/auth/userinfo.email', 'https://www.googleapis.com/auth/userinfo.profile']}
end