require_relative 'bike'

class DockingStation
  attr_reader 'bike'

  def initialize
    @bike = Bike.new
  end

  def dock(bike)
    true
  end

  def release_bike
    @bike
  end

end
