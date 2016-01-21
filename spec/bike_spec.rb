require "bike" # requires the file "./lib/bike.rb"

describe Bike do # describes the behavior of a class e.g. Bike

	it "responds to the method working?" do
		expect(Bike.new).to be_working
	end

end
