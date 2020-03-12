class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]

  def new
    @property = Property.new
    @property.nearest_stations.build
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      redirect_to properties_path
    end
  end

  def index
    @properties = Property.all
  end

  def show
    @nearest_stations = @property.nearest_stations
  end

  def edit

  end

  def update

  end

  def destroy
    @property.destroy
    redirect_to properties_path
  end

  private
    def set_property
      @property = Property.find(params[:id])
    end

    def property_params
      params.require(:property).permit(
        :property_name,
        :rent,
        :address,
        :age,
        :note,
        nearest_stations_attributes: {}#: [:route_name, :station_name, :time]
      )
    end
end
