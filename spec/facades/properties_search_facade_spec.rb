require 'rails_helper'
describe PropertiesSearchFacade do
  subject { PropertiesSearchFacade.new("10000 E Alameda Ave. , Denver CO 80247") }

  it 'exists' do
    expect(subject).to be_a(PropertiesSearchFacade)
  end

  it 'returns AC annual' do
    expect(subject.ac_annual).to eq(6475.4775390625)
  end

  it 'returns the stations' do
    expect(subject.all_stations).to have_key(:total_results)
    expect(subject.station_count).to eq(6)
  end

  it 'gives a greenscore' do
    allow_any_instance_of(PropertiesSearchFacade).to receive(:station_count).and_return(0)
    expect(subject.green_score).to eq(3)
  end
end
