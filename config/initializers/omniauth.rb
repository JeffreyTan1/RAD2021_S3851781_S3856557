Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :twitter, Rails.application.credentials.dig(:twitter, :api_key), Rails.application.credentials.dig(:twitter, :api_secret),
  provider :twitter, "IGpEfygl6nCCBI6LnollTcbSG", "ZP7OQSvTD6SrDTvBf5q6PhilA0ucg95A6SbaiVNoX39CsgU2uX",
  {
      :authorize_params => {
        :force_login => 'true',
      }
    }
end