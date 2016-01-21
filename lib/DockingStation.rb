require './lib/bike.rb'

class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end
  def release_bike
    #Bike.new
    self.bike_available?
    @bikes.pop
  end

  def dock bike
    raise "Full station" if @bikes.count >= 20
    @bikes << bike
  end

  def bike_available?
    raise "No bikes available" if @bikes.empty?
  end
end