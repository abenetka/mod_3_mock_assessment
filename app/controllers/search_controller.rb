class SearchController < ApplicationController

  def index
    @fuel_stations = FuelSearchResult.new(zip)
  end




end
