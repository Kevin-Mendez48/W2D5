class Flight
  attr_reader :passengers
  def initialize(flight, number)
    @flight_number = flight
    @capacity = number
    @passengers =[]
  end
  def full?
    if @passengers.length >= @capacity
      return true
    else
      false
    end
  end
  def board_passenger(passenger)
    if !passenger.has_flight?(@flight_number)
      return false
    end
    if full?
      return true
    else
      @passengers << passenger
    end
  end
  def list_passengers
    @passengers.map { |ele| ele.name }
  end
  def [](idx)
    @passengers[idx]
  end
  def <<(passenger)
    board_passenger(passenger)
  end
end
