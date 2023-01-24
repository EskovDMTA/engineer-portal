class BuildingsController < ApplicationController
  def index
    @buildings = Building.all
  end

  def new
    @building = Building.new
  end

  def show
    @building = Building.find(params[:id])
  end

  def create
    @building = Building.new(building_params)
    debugger
    # @building.attach(params[:main_photo])
    if @building.save
      redirect_to buildings_path
    else 
      render :new
    end
  end

  private 

  def building_params
    params.require(:building).permit(:title, :developer, :facing_area, :material, :main_photo)
  end

end
