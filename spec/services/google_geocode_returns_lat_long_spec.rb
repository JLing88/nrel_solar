require 'rails_helper'

describe 'Google Geocode API' do
  it 'exists' do
    service = GoogleGeocodeService.new

    expect(service).to be_a(GoogleGeocodeService)
  end

  # it 'gets the data' do
  #   VCR.use_cassette("GoogleGeocodeService") do
  #     address = "1331 17th Street, Denver, CO 80202"
  #     facade = PropertiesSearchFacade.new(address)
  #     lat_long = facade.coordinates
  #     expect(lat_long[:lat]).to eq(39.7507834)
  #     expect(lat_long[:lng]).to eq(-104.9964355)
  #  end
  # end
end
