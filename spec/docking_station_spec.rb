

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
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'docks a bike' do
    bike = subject.release_bike
    expect(subject.dock(bike)).to eq bike
  end

  it { is_expected.to respond_to :bike }

  it 'shows bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
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



