class PropertiesController < ApplicationController
  def show
    @property_result = PropertiesSearchFacade.new(params[:address])
    @stations = StationsFacade.new(params[:address]).stations
  end
end
