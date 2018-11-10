require 'rails_helper'

feature 'As a user on the home page' do
  before do
    visit '/'
    fill_in :address, with: '1717 17th St Denver, CO'
    click_on "Find Local Energy Data"
  end

  scenario 'can search for property' do
    expect(current_path).to eq(property_path)
  end
end
