require './lib/bike.rb'

class DockingStation
  attr_reader :bike
  def release_bike
    #Bike.new
    self.bike_available?
    @bike
  end

  def dock bike
    raise "Full station" if @bike
    @bike = bike
  end

  def bike_available?
    raise "No bikes available" if @bike == nil
  end
end