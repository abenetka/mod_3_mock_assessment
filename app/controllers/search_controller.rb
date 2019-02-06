class SearchController < ApplicationController

  def index
    zip = params[:q]
    binding.pry
    @search = FuelSearchResult.new(zip)
  end




end
