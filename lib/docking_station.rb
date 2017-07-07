require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
      @bikes == [] ? fail("I do apologise, there are no bikes available") : @bikes.shift
  end

  def dock bike
      @bikes.length == 20 ? fail("I do apologise, this station is full") : @bikes << bike
  end

end
