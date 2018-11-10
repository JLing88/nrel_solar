require 'rails_helper'

describe 'Google Geocode API' do
  it 'exists' do
    service = GoogleGeocodeService.new

    expect(service).to be_a(GoogleGeocodeService)
  end
end
