class PropertiesSearchFacade

  def initialize(address)
    @address = address
  end

  def ac_annual
  end

  private

  def google_service
    GoogleGeocodeService.new
  end


end
