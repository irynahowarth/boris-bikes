require './lib/bike.rb'

class DockingStation
  DEFAULT_CAPACITY = 10
  attr_reader :bikes
  def initialize
    @bikes = []
  end
  def release_bike
    #Bike.new
    raise "No bikes available" if empty?
    @bikes.pop
  end

  def dock bike
    raise "Full station" if full?
    @bikes << bike
  end

  private
  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end
end