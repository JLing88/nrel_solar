class StationsFacade
  def initialize(location)
    @location = location
    @fuel_type = "ELEC, BD"
  end

  def stations
    @stations ||= service.get_stations(@location)[:fuel_stations].map do |station|
      Station.new(station)
    end
  end

  private

  def service
    NrelStationService.new
  end
end
