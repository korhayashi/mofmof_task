# == Schema Information
#
# Table name: nearest_stations
#
#  id           :integer          not null, primary key
#  route_name   :string
#  station_name :string
#  time         :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  property_id  :integer
#
# Indexes
#
#  index_nearest_stations_on_property_id  (property_id)
#
class NearestStation < ApplicationRecord
  belongs_to :property
end
