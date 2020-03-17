# == Schema Information
#
# Table name: properties
#
#  id            :integer          not null, primary key
#  address       :string           not null
#  age           :integer          not null
#  note          :text             not null
#  property_name :string           not null
#  rent          :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
require 'test_helper'

class PropertyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
