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

  def green_score
    station_score + ac_score
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

  def station_score_converter
    {
      0 => 0,
      1 => 1,
      2 => 2,
      3..4 => 3,
      4..5 => 4,
      6..1000000 => 5
    }
  end

  def station_score
    station_score_converter.select do |count, score|
      count === station_count
    end.values.first
  end

  def ac_score_converter
    {
      0..20 => 1,
      21..40 => 2,
      41..60 => 3,
      61..80 => 4,
      81..100 => 5
    }
  end

  def ac_coverage
    (ac_annual / 10800) * 100
  end

  def ac_score
    ac_score_converter.select do |count, score|
      count === ac_coverage
    end.values.first
  end
end
