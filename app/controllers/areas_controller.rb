class AreasController < ApplicationController
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
    @area = Area.find(params[:id])
  end
end
