require 'rails_helper'

describe "As a User" do
  describe "when they visit the root page" do
    it 'they can search for fuel locations by zipcode' do

    visit "/"

    fill_in :q, with: 80203

    click_button "Locate"

    expect(current_path).to eq(search_path)

      within first(".fuel_stations") do
        expect(page).to have_css(".name")
        expect(page).to have_css(".address")
        expect(page).to have_css(".fuel_types")
        expect(page).to have_css(".distance")
        expect(page).to have_css(".access_times")
      end
  
    end
  end
end
