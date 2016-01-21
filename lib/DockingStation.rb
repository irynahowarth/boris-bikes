require './lib/bike.rb'

class DockingStation
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
    @bikes.count >= 20
  end
end