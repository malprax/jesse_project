class LocationSearch < ApplicationRecord
  geocoded_by :full_address
  after_validation :geocode
end
