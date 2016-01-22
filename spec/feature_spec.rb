require './lib/docking_station.rb'
london_heights = DockingStation.new
20.times { london_heights.dock(Bike.new) }
