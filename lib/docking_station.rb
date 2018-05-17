require_relative 'bike'

class DockingStation

  def dock(bike)
    @bike = bike
  end

  def release_bike
    Bike.new
  end

  def bike
    @bike
  end

end
