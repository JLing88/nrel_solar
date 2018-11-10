require 'rails_helper'

feature 'As a user on the root path' do
  before do
    visit '/'
    # results = Geocoder.search('1420 Hover St, Longmont, CO').first.coordinates
    fill_in :address, with: '1717 17th St Denver, CO'
  end
  scenario 'can search for property' do

  end
end
