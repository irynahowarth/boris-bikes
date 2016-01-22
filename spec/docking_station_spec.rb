require 'docking_station' # requires the file "./lib/docking_station.rb"

describe DockingStation do                              # describes behavior of a class e.g. DockingStation

    it "responds to the method release_bike" do         # tests whether the instance responds when the method release_bike is called
      expect(subject).to respond_to(:release_bike)
    end     # subject is an instance of the class DockingStation

		it "docking_station bikes on initialize is an empty array" do
			expect(subject.bikes).to eq []
		end

		it "release the bike if there is a bike available" do
			bike = Bike.new
			subject.dock(bike)
			expect(subject.release_bike).to eq [bike]
		end

    it "raises an error if Docking Station is empty" do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end

    it "raises an error when the station is full" do
      20.times{subject.dock(Bike.new)}
      expect { subject.dock(Bike.new)}.to raise_error 'This station is already full'
    end

    # *

    it "responds to the method dock" do
      expect(subject).to respond_to(:dock).with(1).argument
    end

    it "responds to the method bikes" do
      expect(subject).to respond_to(:bikes)
    end

    it "creates a new instance of bike when a bike is docked to the docking station" do
			bike = Bike.new
			expect(subject.dock(bike)).to eq [bike]
    end

    it "returns true if a bike has been docked" do
      subject.dock(Bike.new)
      expect(subject.bikes).to be_truthy
    end

end


# *
# Another possibility to test this is a one-liner:
# it { respond_to(:release_bike) }
# -> https://relishapp.com/rspec/rspec-core/docs/subject/one-liner-syntax
# *
