require_relative 'bike'

class DockingStation

  attr_reader :bike

  def release_bike
    fail
  # return Bike.new
  end

  def dock_bike(bike)
    @bike = bike
    return @bike
  end

end
