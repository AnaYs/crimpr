class SectorsController < ApplicationController
  before_action :set_area, only: [:index, :show, :new, :create, :update]

  def index
    @sectors = @area.sectors.all
  end

  def show
    @sector = @area.sectors.find(params[:id])
  end

  def new
    @sector = Sector.new
  end

  def create
    @sector = @area.sectors.create(sector_params)
    redirect_to area_path(@area)
  end

  def update
    @sector = @area.sectors.find(params[:id])
    @sector.update(sector_params)
    redirect_to sector_path(@sector)
  end

  private

  def set_area
    @area = Area.find(params[:area_id])
  end

  def sector_params
    params.require(:sector).permit(:id, :name, :description, :cardinal_direction, :grading, :document)
  end
end
