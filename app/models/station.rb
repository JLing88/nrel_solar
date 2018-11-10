class Station
  attr_reader :name,
              :fuel_type,
              :phone,
              :address,
              :latitude,
              :longitude,
              :distance,
              :access_times,
              :fuel_type,
              :directions

  def initialize(station_data)
    @name = station_data[:station_name]
    @fuel_type = station_data[:fuel_type_code]
    @phone = station_data[:station_phone]
    @address = "#{station_data[:street_address]} #{station_data[:city]}, #{station_data[:state]} #{station_data[:zip]}"
    @latitude = station_data[:latitude]
    @longitude = station_data[:longitude]
    @distance = station_data[:distance]
    @access_times = station_data[:access_days_time]
    @fuel_type = station_data[:fuel_type_code]
    @directions = station_data[:intersection_directions]
  end
end
