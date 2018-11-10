require 'rails_helper'

describe "Nearest Stations Endpoint" do
  it "returns the nearest stations from user search" do
    facade = StationsFacade.new("Denver, CO")
    results = facade.stations
    expect(results.count).to eq(20)
    expect(results.first.name).to eq("PUBLIC STATIONS")
    expect(results.first.distance).to eq(0.24074)
    expect(results.first.fuel_type).to eq("ELEC")
    expect(results.first.latitude).to eq(39.7360835)
    expect(results.first.longitude).to eq(-104.9881709)
    expect(results.first.phone).to eq("888-758-4389")
    expect(results.first.address).to eq("55 W 12th Ave Denver, CO 80204")
    expect(results.first.directions).to eq("CULTURAL CTR 3A; On Level 3 near the elevators")
    expect(results.first.fuel_type).to eq("ELEC")
    expect(results.first.access_times).to eq("24 hours daily")
  end
end
