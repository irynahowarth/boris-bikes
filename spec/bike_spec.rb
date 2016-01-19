require 'bike'
=begin
describe Bike do
  it 'responds to working?' do
    expect(subject).to respond_to :working?
  end
end


describe Bike do
  it {is_expected.to respond_to :working?}


describe Bike do
  it 'is working' do
    bike = Bike.new
    expect(bike.working?).to be_truthy
  end
=end

describe Bike do
  it 'is working' do
    bike = Bike.new
    expect(bike).to be_working
  end
end