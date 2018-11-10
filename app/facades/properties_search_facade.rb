class PropertiesSearchFacade

  def initialize(address)
    @address = address
  end

  def ac_annual
    energy_service.ac_annual
  end

  private

  def google_service
    GoogleGeocodeService.new
  end

  def energy_service
    EnergyOutputService.new(@address)
  end
end
