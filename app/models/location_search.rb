# == Schema Information
#
# Table name: location_searches
#
#  id                :integer          not null, primary key
#  phone             :string
#  country           :string
#  city              :string
#  state             :string
#  state_code        :string           default("ON")
#  zip               :string
#  address           :string
#  longitude         :float
#  latitude          :float
#  fetched_latitude  :float
#  fetched_longitude :float
#  emergency_contact :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class LocationSearch < ApplicationRecord
  geocoded_by :full_address
  after_validation :geocode, if: ->(obj){obj.full_address.present? and obj.full_address_change}

  def full_address
    [address, country, city, state].compact.join(‘, ‘)
  end
end
