require './lib/passenger'
require "pry"
# This block helps format the test results
RSpec.configure do |config|
  config.formatter = :documentation
end

# Your tests should start here!
RSpec.describe Passenger do 
    before(:each) do
      @charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
      @taylor = Passenger.new({"name" => "Taylor", "age" => 12})    
    end
    
    it "exsist" do
      expect(@charlie).to be_an_instance_of(Passenger)
    end

    it "has a name" do 
      expect(@charlie.name).to eq("Charlie")
    end

    it "has an age" do
      expect(@charlie.age).to eq(18)
    end

    it "can see age" do
      expect(@charlie.adult?).to be(true)
      expect(@taylor.adult?).to be(false)
    end

    it "can see if they drive" do
      expect(@charlie.driver?).to be(false)
    end

    it "can learn to drive" do
      @charlie.drive
      expect(@charlie.driver?).to be(true)
    end
end