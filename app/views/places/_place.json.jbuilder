json.extract! place, :id, :address, :city, :country, :state, :fetch_longitude, :fetch_latitude, :created_at, :updated_at
json.url place_url(place, format: :json)
