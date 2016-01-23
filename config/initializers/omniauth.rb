provider :google_oauth2, ENV["GOOGLE_OAUTH_CLIENT_ID"], ENV["GOOGLE_OAUTH_CLIENT_SECRET"]
scope: 'profile', image_aspect_ratio: 'square', image_size: 48, access_type: 'online'
