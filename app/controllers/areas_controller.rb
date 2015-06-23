class AreasController < ApplicationController
  before_filter :set_area, only: [:show]

  def index
    @areas = Area.all
    @markers = Gmaps4rails.build_markers(@areas) do |area, marker|
      marker.lat area.latitude
      marker.lng area.longitude
      marker.infowindow area.name
      marker.json({ area_id: area.id })
    end
  end

  def show
    @barometer = Barometer.new(@area.location)
    @weather = @barometer.measure
  end

  protected
  def set_area
    @area = Area.find(params[:id])
  end

  def area_params
    params.require(:area).permit(:name, :description, :grades_distribution, :location)
  end
end
