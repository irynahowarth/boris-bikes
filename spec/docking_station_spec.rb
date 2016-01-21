require 'docking_station'

describe DockingStation do
    it "responds to the method release_bike" do
      expect(subject).to respond_to(:release_bike)
    end
       # Another possibility to test this is a one-liner
       # https://relishapp.com/rspec/rspec-core/docs/subject/one-liner-syntax
       # it { respond_to(:release_bike) }

    it "responds to the method dock" do
      expect(subject).to respond_to(:dock).with(1).argument
    end

    it "responds to the method bikes_docked" do
      expect(subject).to respond_to(:bikes_docked)
    end

    it "creates a new instance of bike when a bike is docked to the docking station" do
      expect(subject.dock(Bike.new)).to be_a Bike
    end

    it "returns true if a bike has been docked" do
      subject.dock(Bike.new)
      expect(subject.bikes_docked).to be_truthy
    end

end
