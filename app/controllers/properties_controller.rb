class PropertiesController < ApplicationController
  def new
    @property = Property.new
    @property.nearest_stations.build
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
        nearest_stations_attributes: []#: [:route_name, :station_name, :time]
      )
    end
end
