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

require 'test_helper'

class PlaceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
