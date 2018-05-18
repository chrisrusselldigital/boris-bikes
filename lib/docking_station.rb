require_relative 'bike'

class DockingStation

DEFAULT_CAPACITY = 20

  attr_reader :capacity, :bikes

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def dock(bike)
    fail "Docking station full" if @bikes.count >= 20
    @bikes << bike
  end

  def release_bike
    fail "No bikes available" if @bikes.empty?
    @bikes.pop
  end


  private
  # attr_reader :bikes (WHY DOES THIS THROW AN rspec ERROR???)

  def full?
    bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end

end
