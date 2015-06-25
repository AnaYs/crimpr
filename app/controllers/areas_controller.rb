class AreasController < ApplicationController
  before_filter :set_area, only: [:show]

  def index
   # @areas = Area.all # Original

    if params[:query]
    location = params[:query]
      else
    location = [params[:lat], params[:lng]]
    end

   @areas = Area.near(location, 4000)



    @markers = Gmaps4rails.build_markers(@areas) do |area, marker|
      marker.lat area.latitude
      marker.lng area.longitude
      marker.infowindow area.name
      marker.json({ area_id: area.id })
    end
  end

  def show
    @barometer = Barometer.new(barometer_coordinates)
    @weather = @barometer.measure
    # byebug to see in terminal which other fields are returned in the json!
    # then type pp @weather (btw, pp is "pretty print")
  end

  protected
  def set_area
    @area = Area.find(params[:id])
  end

  def area_params
    params.require(:area).permit(:name, :description, :grades_distribution, :location)
  end

  def barometer_coordinates
    latitude = @area.latitude
    longitude = @area.longitude
    [latitude, longitude].join(',')
  end
end
