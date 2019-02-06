require 'rails_helper'

describe "As a User" do
  describe "when they visit the root page" do
    it 'they can search for fuel locations by zipcode' do

    visit "/"

    fill_in :q, with: 80203
    save_and_open_page
    click_link "Locate"

    expect(current_path).to eq(search_path)





    end
  end
end
