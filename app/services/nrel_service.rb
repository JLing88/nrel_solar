class NrelService
  def initialize
    @fuel_type = "BD, ELEC"
  end

  def get_stations(location)
    get_json("/api/alt-fuel-stations/v1/nearest.json?location=#{location}&radius=10.0&fuel_type=#{@fuel_type}&access=public")
  end

  private

  def get_json(url)
    JSON.parse(conn.get(url).body, symbolize_names: :true)
  end

  def conn
    Faraday.new(url: "https://developer.nrel.gov") do |faraday|
      faraday.headers["X-API-KEY"] = ENV["NREL_API_KEY"]
      faraday.adapter Faraday.default_adapter
    end
  end
end
