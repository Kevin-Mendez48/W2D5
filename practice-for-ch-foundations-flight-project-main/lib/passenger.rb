class Passenger
  attr_reader :name

  def initialize(name)
    @name = name
    @flight_numbers = []
  end

  def has_flight?(flight)
    if @flight_numbers.include?(flight.upcase)
      return true
    end
    false
  end
  def add_flight(flight)
      if !has_flight?(flight)
        @flight_numbers << flight.upcase
      end
  end
end
