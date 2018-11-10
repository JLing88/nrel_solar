require 'rails_helper'
describe PropertiesSearchFacade do
  subject { PropertiesSearchFacade.new("10000 E Alameda Ave. , Denver CO 80247") }

  it 'exists' do
    VCR.use_cassette("PropertySearchFacade") do
      expect(subject).to be_a(PropertiesSearchFacade)
    end
  end

  it 'returns AC annual' do
    VCR.use_cassette("PropertySearchFacade") do
      expect(subject.ac_annual).to eq(6475.4775390625)
    end
  end

  it 'returns the stations' do
    VCR.use_cassette("NRELService") do
      expect(subject.all_stations).to have_key(:total_results)
      expect(subject.station_count).to eq(6)
    end
  end

  it 'gives a greenscore' do
    VCR.use_cassette("EnergyService") do
      allow_any_instance_of(PropertiesSearchFacade).to receive(:station_count).and_return(0)
      expect(subject.green_score).to eq(3)
    end
  end
end
