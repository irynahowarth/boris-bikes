require 'docking_station'

describe DockingStation do

  it {is_expected.to respond_to :release_bike}

  it { is_expected.to respond_to(:dock).with(1).argument }

  it 'releases working bikes' do
    bike = Bike.new
    expect(bike).to be_working
  end

  it 'docks a bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq [bike]
  end

  it { is_expected.to respond_to :bikes }

  it 'shows bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq [bike]
  end

  it 'raises error when no bikes available' do
    expect {subject.release_bike}.to raise_error("No bikes available")
  end

  it 'raises error when try to dock more than one bike' do
    DockingStation::DEFAULT_CAPACITY.times {subject.dock(Bike.new)}
    expect {subject.dock(Bike.new)}.to raise_error("Full station")
  end

  it 'gives an empty array when initialize bikes' do
    expect(subject.bikes).to eq []
  end

end