class EnergyOutputService
  def initialize(address)
    @address = address
  end

  def ac_annual
    conn = Faraday.new(url: 'https://developer.nrel.gov')
    response = conn.get do |req|
      req.url '/api/pvwatts/v6', options
    end
    JSON.parse(response.body, symbolize_names: true)[:outputs][:ac_annual]
  end

  private

  def options
    {
      format: "json",
      api_key: ENV['NREL_API_KEY'],
      system_capacity: 4,
      module_type: 0,
      losses: 14.08,
      array_type: 0,
      tilt: 20,
      azimuth: 180,
      address: @address
    }
  end
end
