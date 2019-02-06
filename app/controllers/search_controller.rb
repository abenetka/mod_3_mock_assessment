class SearchController < ApplicationController

  def index
    zip = params[:q]
    @search = FuelSearchResult.new(zip)
  end
end
