require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
      @bike == nil ? fail("I do apologise, there are no bikes available") : @bike
  end

  def dock bike
      @bike ? fail("I do apologise, this station is full") : @bike = bike
  end

end
