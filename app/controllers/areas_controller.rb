class AreasController < ApplicationController
  before_filter :set_area, only: [:show]

  skip_before_action :authenticate_user!, only: [:index, :show, :home]

  def index
    # user can search based on geolocation or on a specified search location
    if params[:query]
      location = params[:query]
      # latitude and longitude for myPositionMarker
        coords = Geocoder.coordinates(location)
          @lat = coords[0]
          @lng = coords[1]
    elsif params[:lat]
      location = [params[:lat], params[:lng]]
        @lat = params[:lat]
        @lng = params[:lng]
    else
      location = "Brussels"
      # latitude and longitude for myPositionMarker
        coords = Geocoder.coordinates(location)
          @lat = coords[0]
          @lng = coords[1]
    end

    # Finding areas near the defined location
    @areas = Area.near(location, 50)
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

  def new
    @area = Area.new
  end

  def create
    @area = Area.create(area_params)
    redirect_to area_path(@area)
    #name, description, grades_distribution, location, latitude, longitude
  end

  protected
  def set_area
    @area = Area.find(params[:id])
  end

  def area_params
    params.require(:area).permit(:name, :description, :grades_distribution, :location, :latitude, :longitude)
  end

  def barometer_coordinates
    latitude = @area.latitude
    longitude = @area.longitude
    [latitude, longitude].join(',')
  end
end
