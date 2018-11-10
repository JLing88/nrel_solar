class PropertiesController < ApplicationController
  def show
    @address = params[:address]
    facade = PropertiesSearchFacade.new(@address)
    @green_score = facade.green_score
    # coordinates = Geocoder.search(params[:address]).first.coordinates
  end
end
