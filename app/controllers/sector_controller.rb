class SectorController < ApplicationController
  def index
  end

  def show
    @barometer = Barometer.new('Paris')
    @weather = @barometer.measure
  end
end
