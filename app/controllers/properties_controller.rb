class PropertiesController < ApplicationController
  def index
    coordinates = Geocoder.search(params[:address]).first.coordinates
  end
end
