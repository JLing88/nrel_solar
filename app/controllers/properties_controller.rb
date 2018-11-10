class PropertiesController < ApplicationController
  def show
    coordinates = Geocoder.search(params[:address]).first.coordinates
  end
end
