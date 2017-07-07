require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    if @bike == nil
      fail("I do apologise, there are no bikes available")
    else
      @bike
    end
  end

  def dock bike
    if @bike != nil
      fail("I do apologise, this station is full")
    else
      @bike = bike
    end
  end

end
