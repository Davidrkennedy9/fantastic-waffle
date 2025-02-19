require "./lib/park"
require './lib/vehicle'
require './lib/passenger'
require "pry"

RSpec.describe Park do
    before(:each) do
        @park = Park.new("Grand View Glacier Park", 30)
    end

    it "exist" do
        expect(@park).to be_an_instance_of(Park)
    end

    it "has a name" do
        expect(@park.name).to eq("Grand View Glacier Park")
    end

    it "has an admission price" do
        expect(@park.price).to eq(30)
    end

    it "can have vehicles" do
        expect(@park.vehicles).to eq([])
    end

    it "can have passengers" do 
        expect(@park.passengers).to eq([])
    end

    describe "will have vehicels" do
        before(:each) do
            @vehicle_1 = Vehicle.new("1999", "Subaru", "Outback")  
            @vehicle_2 = Vehicle.new("2025", "Jeep", "Gladiator")  
            @charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
            @taylor = Passenger.new({"name" => "Taylor", "age" => 12})  
            @mike = Passenger.new({"name" => "Mike", "age" => 25})
        end
        it "can add vehicles" do
            @park.add_vehicle(@vehicle_1)
            @park.add_vehicle(@vehicle_2)
            expect(@park.vehicles).to eq([@vehicle_1, @vehicle_2])
        end
        it "can see passengers" do
            @park.add_passenger(@charlie)
            @park.add_passenger(@taylor)
            @park.add_passenger(@mike)
            expect(@park.passengers).to eq([@charlie, @taylor, @mike])
        end
        it "can see revenue" do
            
        end
    end

end