# == Schema Information
#
# Table name: places
#
#  id              :integer          not null, primary key
#  name            :string
#  address         :string
#  fetch_longitude :float
#  fetch_latitude  :float
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Place < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :address_changed?


end
