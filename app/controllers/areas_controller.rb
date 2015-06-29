class AreasController < ApplicationController
  before_action :set_area, only: [:show]

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

    @areas.each do |area|
      area.distance = area.distance_to([@lat, @lng]).round(2)
    end
  end

  def show
    @weather = current_weather
    @temperature = @weather.temperature
    @condition = @weather.condition
    @pressure = @weather.pressure
    @sunrise = @weather.sun.rise.strftime('%I:%M:%S %p')
    @sunset = @weather.sun.set.strftime('%I:%M:%S %p')
    @sectors = @area.sectors
    @markers = Gmaps4rails.build_markers(@sectors) do |sector, marker|
      marker.lat sector.latitude
      marker.lng sector.longitude
      marker.infowindow sector.name
      marker.json({ sector_id: sector.id })
    end
  end

  def new
    @area = Area.new
  end

  def create
    @area = Area.create(area_params)
    redirect_to area_path(@area)
  end

  private

  def current_weather
    @barometer = Barometer.new(barometer_coordinates)
    @weather = @barometer.measure.current
  end

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
