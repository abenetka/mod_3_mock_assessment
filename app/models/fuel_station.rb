class FuelStation
  def initialize(attributes)
    @name = attributes[:station_name]
    @address = attributes[:address]
    @fuel_types = attributes[:fuel_types]
    @distance = attributes[:distance]
    @access_times = attributes[:access_times]
  end

end
