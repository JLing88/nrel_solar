require "rails_helper"

describe EnergyOutputService do
  it 'should return the annual ac output' do
    # VCR.use_cassette("annual ac output") do
      address = "17334 E 102nd Pl, Commerce City, CO 80022"

      energy_service = EnergyOutputService.new(address)

      expect(energy_service.ac_annual).to eq(6416.921875)
    # end
  end
end
