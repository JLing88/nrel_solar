class PropertiesController < ApplicationController
  def show
    if params[:address] != ""
      @property_result = PropertiesSearchFacade.new(params[:address])
      @stations = StationsFacade.new(params[:address]).stations
    else
      flash[:alert] = "Please enter a valid address."
      redirect_to root_path
    end
  end
end
