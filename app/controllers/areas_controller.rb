class AreasController < ApplicationController
  def index
    @areas = Area.all
    @markers = Gmaps4rails.build_markers(@areas) do |area, marker|
      marker.lat area.latitude
      marker.lng area.longitude
    end

  end

  def show
    @area = Area.find(params[:id])
  end
end
