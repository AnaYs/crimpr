class AreasController < ApplicationController
  before_action :set_area, only: [:show]

  skip_before_action :authenticate_user!, only: [:index, :home]

  def index
    # user can search based on geolocation or on a specified search location
    if params[:query]
      # latitude and longitude for myPositionMarker
        coords = Geocoder.coordinates(params[:query])
          @lat = coords[0]
          @lng = coords[1]
      location = [@lat, @lng]
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
      location = [@lat, @lng]
    end

    # Finding areas near the defined location
    @areas = Area.near(location, 50)
    @areas.each do |area|
      area.distance = area.distance_to([@lat, @lng]).round(2)
    end

    @markers = Gmaps4rails.build_markers(@areas) do |area, marker|
      area.weather = current_weather(area)
      marker.lat area.latitude
      marker.lng area.longitude
      marker.infowindow render_to_string(partial: "/areas/infowindow", locals: { object: area})
      marker.json({ area_id: area.id })
    end
  end

  def show
    @users = User.all.where.not(id: current_user.id)

    @weather = current_weather(@area)
    @temperature = @weather.temperature
    @condition = @weather.condition
    @pressure = @weather.pressure
    @sunrise = @weather.sun.rise.strftime('%I:%M %p')
    @sunset = @weather.sun.set.strftime('%I:%M %p')
    @icon = @weather.icon

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

  def current_weather(area)
    coordinates = barometer_coordinates(area)
    @barometer = Barometer.new(coordinates)
    @weather = @barometer.measure.current
  end

  def set_area
    @area = Area.find(params[:id])
  end

  def area_params
    params.require(:area).permit(:name, :description, :grades_distribution, :access, :access_time, :location, :latitude, :longitude)
  end

  def barometer_coordinates(area)
    latitude = area.latitude
    longitude = area.longitude
    [latitude, longitude].join(',')
  end
end
