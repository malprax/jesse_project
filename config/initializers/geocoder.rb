Geocoder.configure do |config|
  # geocoding service (see below for supported options):
  config.lookup = :google

  # to use an API key:
  config.api_key = ENV['GOOGLE_MAP_API_KEY']

  # geocoding service request timeout, in seconds (default 3):
  config.timeout = 5
end
