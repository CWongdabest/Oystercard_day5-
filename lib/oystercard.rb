require_relative './journey'
class Oystercard
  attr_reader :balance, :entry_station, :exit_station, :journey_history, :current_journey

  DEFAULT_BALANCE = 0
  MAXIMUM_BALANCE = 90
  MINIMUM_BALANCE = 1


  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance
    @journey_history = []
  end

  def top_up(money)
    fail 'You have exceeded card limit' if exceed_maximum?(money)
    @balance += money
  end

  def touch_in(entry_station)
    fail 'insufficient fund' if fund_sufficient?
    # create_journey(entry_station) unless current_journey


     if current_journey
       end_journey(exit_station)
     end
       create_journey(entry_station)

  end

  def touch_out(exit_station)
    create_journey(entry_station) unless current_journey
    end_journey(exit_station)
  end


  def end_journey(exit_station)
    current_journey.finish(exit_station)
    deduct(current_journey.calculate_fare)
    @journey_history << current_journey
    @current_journey = nil
  end

  def create_journey(entry_station)
    @current_journey = Journey.new
    current_journey.start(entry_station)
  end


  private

  def exceed_maximum?(money)
    @balance + money > MAXIMUM_BALANCE
  end

  def fund_sufficient?
    @balance < MINIMUM_BALANCE
  end

  def deduct(amount)
    @balance -= amount
  end

end
