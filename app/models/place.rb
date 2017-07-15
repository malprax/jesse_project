# == Schema Information
#
# Table name: places
#
#  id         :integer          not null, primary key
#  city       :string
#  country    :string
#  state      :string
#  address    :string
#  longitude  :float
#  latitude   :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Place < ApplicationRecord
  # geocoded_by :full_address
  # after_validation :geocode, if: lambda{|obj| obj.full_address_change? && obj.state_change? && obj.country_change? && obj.city_change? && obj.address_change? }

  attr_accessor :full_address
  # def full_address
  #   [address, city, country, state].compact.join(',')
  # end

end
