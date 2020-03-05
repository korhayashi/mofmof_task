class PropertiesController < ApplicationController
  def new
    @property = Property.new
    2.times { @property.nearest_station.build }
  end

  def create
    @property = Property.new
    if @property.save
      redirect_to properties_path
    end
  end

  private
    def property_params
      params.require(:property).permit(
        :property_name,
        :rent,
        :address,
        :age,
        :note,
        nearest_station1_attribute: [:route_name, :station_name, :time],
        nearest_station2_attribute: [:route_name, :station_name, :time]
      )
    end
end
