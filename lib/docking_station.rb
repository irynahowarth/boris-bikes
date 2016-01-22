require "./lib/bike.rb"

class DockingStation
    attr_reader :bikes

    def initialize
      @bikes = []
    end

    def release_bike
      fail 'No bikes available' if @bikes.empty?
      @bikes
    end

    def dock(bike)
      raise 'This station is already full' if  @bikes.length >= 20
      @bikes.push(bike)
    end

end
