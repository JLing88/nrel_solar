class PropertiesController < ApplicationController
  def show
    # @address = params[:address]
    @property_result = PropertiesSearchFacade.new(params[:address])
    # @green_score = facade.green_score
    coordinates = Geocoder.search(params[:address]).first.coordinates
  end
end
