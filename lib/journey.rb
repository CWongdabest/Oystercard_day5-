class Journey
  attr_reader :entry_station, :exit_station, :fare

  MINIMUM_FARE = 1
  PENALTY_FARE = 6

  def start(entry_station)
    @entry_station = entry_station
  end

  def finish(exit_station)
    @exit_station = exit_station
  end

  def complete?
    !!entry_station && !!exit_station
  end

  def calculate_fare
    @fare = complete? ? MINIMUM_FARE : PENALTY_FARE
  end

end
