class PropertiesSearchFacade

  def initialize(address)
    @address = address
  end

  def ac_annual
    energy_service.ac_annual
  end

  def all_stations
    @stations ||= nrel_station_service.get_stations(@address)
  end

  def station_count
    all_stations[:total_results]
  end

  private

  def google_service
    GoogleGeocodeService.new
  end

  def energy_service
    EnergyOutputService.new(@address)
  end

  def nrel_station_service
    NrelStationService.new
  end
end
