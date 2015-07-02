class PicturesController < ApplicationController

  def new
    @area = Area.find(params[:area_id])
    @picture = Picture.new
  end

  def create
    @area = Area.find(params[:area_id])
    @picture = @area.pictures.build(picture_params)
    if @picture.save!
      redirect_to area_path(@area)
    else
      render :new
    end
  end

  private

  def picture_params
    params.require(:picture).permit(:title, :body, :picture)
  end
end
