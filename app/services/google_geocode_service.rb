class GoogleGeocodeService

  def get_coordinates(address)
    get_json("/maps/api/geocode/json?key=#{ENV["GEOCODE_API_KEY"]}&address=#{address}")
  end

  private

  def conn
    Faraday.new(url: "https://maps.googleapis.com")
  end

  def get_json(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end
end
