class FuelSearchResult
  def initialize(zip)
    @zip = zip
  end

  def fuel_stations
    data = service.fuel_stations_by_zipcode
    data.map do |raw_station|
      FuelStation.new(raw_station)
    end
  end

  def service
    AltFuelService.new(@zip)
  end

end
