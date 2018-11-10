require 'rails_helper'
describe PropertiesSearchFacade do
  it 'exists' do
    facade = PropertiesSearchFacade.new("10000 E Alameda Ave. Apt 736, Denver CO 80247")
    expect(facade).to be_a(PropertiesSearchFacade)
  end
  # it 'returns AC annual' do
  #
  # end
end
