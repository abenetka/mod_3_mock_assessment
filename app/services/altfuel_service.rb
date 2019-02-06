class AltFuelService
  def initialize(zip)
    @zip = zip
  end

  def fuel_stations_by_zipcode
    get_json("/api/alt-fuel-stations/v1/?zip=#{@zip}"
  end

  def get_json(url)
    response = conn.get(url) 
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://developer.nrel.gov/api") do |faraday|
      faraday.headers["X-API-KEY"] = ENV["ALTFUEL_KEY"]
      faraday.adapter Faraday.default_adapter
    end
  end

end
