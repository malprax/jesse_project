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

require 'test_helper'

class LocationSearchTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
