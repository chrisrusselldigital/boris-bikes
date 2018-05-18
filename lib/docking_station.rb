require_relative 'bike'

class DockingStation

DEFAULT_CAPACITY = 20

  attr_reader :bike, :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
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

  def full?
    bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end
