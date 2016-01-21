require "./lib/bike.rb"

class DockingStation
    attr_reader :bikes_docked

    def release_bike
        if @bikes_docked == true
          Bike.new
        else
          fail 'No bikes available'
        end
    end

    def dock(bike)
      @bikes_docked = Bike.new
    end
  end
