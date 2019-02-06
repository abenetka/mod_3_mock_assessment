class FuelSearchResult
  def initialize(zip)
    @zip = zip
  end

  def fuel_stations
    data = AltFuelService.new(@zip).fuel_stations_by_zipcode.[8][1][0]
    binding.pry
    data.map do |raw_station|
      FuelStation.new(raw_station)
    end
  end

  def service
    AltFuelService.new(@zip)
  end

end
