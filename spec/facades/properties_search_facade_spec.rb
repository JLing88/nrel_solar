require 'rails_helper'
describe PropertiesSearchFacade do
  it 'exists' do
    facade = PropertiesSearchFacade.new("10000 E Alameda Ave. Apt 736, Denver CO 80247")
    expect(facade).to be_a(PropertiesSearchFacade)
  end
  it 'returns AC annual' do
    facade = PropertiesSearchFacade.new("17334 E 102nd Pl, Commerce City, CO 80022")
    expect(facade.ac_annual).to eq(6416.921875)
  end
end
