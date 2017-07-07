require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes
  attr_accessor :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
       empty? ? fail("I do apologise, there are no bikes available") : bikes[0].working ? @bikes.shift : "There are no working bikes available"
  end

  def dock bike
      full? ? fail("I do apologise, this station is full") : @bikes << bike
  end

  #Bike is broken method - makes bike.working = false
  def dock_broken_bike
      full? ? fail("I do apologise, this station is full") :  @bikes << Bike.new(false)
  end

  private

  def full?
    @bikes.length == @capacity
  end

  def empty?
    @bikes == []
  end

end
