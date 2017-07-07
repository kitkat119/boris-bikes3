require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
       empty? ? fail("I do apologise, there are no bikes available") : @bikes.shift
  end

  def dock bike
      full? ? fail("I do apologise, this station is full") : @bikes << bike
  end

  private

  def full?
    @bikes.length == DEFAULT_CAPACITY
  end

  def empty?
    @bikes == []
  end

end
