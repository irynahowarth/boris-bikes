

require 'DockingStation.rb'
=begin ###
describe DockingStation do
  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end
=end
describe DockingStation do
  it {is_expected.to respond_to :release_bike}
  it { is_expected.to respond_to(:dock).with(1).argument }

  it 'releases working bikes' do
    bike = Bike.new
    expect(bike).to be_working
  end

  it 'docks a bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it { is_expected.to respond_to :bike }

  it 'shows bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it { is_expected.to respond_to :bike_available? }

  it 'raises error when no bikes available' do
    expect {subject.bike_available?}.to raise_error("No bikes available")
  end

  it 'raises error when try to dock more than one bike' do
    bike = Bike.new
    subject.dock(bike)
    expect {subject.dock(Bike.new)}.to raise_error("Full station")
  end
end

=begin
describe DockingStation do
  it 'is working' do
    bike = Bike.new
    expect(bike).to be_working
  end
end

=end



