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
      if @bikes_docked == nil
        @bikes_docked = Bike.new
      else
        raise 'This station is already full'
      end
    end
  end
#  if @bikes_docked == 0
#    Bike.new
#  else
#    fail 'This station is already full'
#  end
#end
