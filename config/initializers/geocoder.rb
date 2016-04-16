Geocoder.configure(
  lookup:    :google,
  api_key:   ENV['GOOGLE_API_SERVER_KEY'],
  use_https: Rails.env.production?,
  units:     :km       # :km for kilometers or :mi for mile
)
