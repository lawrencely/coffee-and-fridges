class LocationsController < ApplicationController
  def new
  end

  def create
    @location = Location.new location_params
    if @location and @current_user
      @location.users << @current_user
      @current_user.locations << @location
      @location.save
      redirect_to location_path
    else
      render "new"
    end
  end

  def edit
    @location = Location.find params[:id]
  end

  def update
    location = Location.find params[:id]
    location.update location_params
    redirect_to location_path
  end

  def show
    location = Location.find params[:id]
  end

  private
  def location_params
    params.require(:location).permit(:name, :description)
  end
end
