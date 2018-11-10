require 'rails_helper'

feature 'As a user on the home page' do
  before do
    address = '10000 E Alameda Ave. , Denver CO 80247'

    visit '/'
    fill_in :address, with: address
    click_on "Find Local Energy Data"
  end

  scenario 'search returns green score for address' do
    expect(current_path).to eq(property_path)
    expect(page).to have_content('Green Score = 6')
  end
end
