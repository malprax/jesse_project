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

require 'test_helper'

class PlaceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
