require './lib/vehicle'
require './lib/passenger'
require "pry"


RSpec.describe Vehicle do
    before(:each) do
        @vehicle = Vehicle.new("2001", "Honda", "Civic")  
     end

     it "exist" do
        expect(@vehicle). to be_an_instance_of(Vehicle)
     end

     it "has a year" do
        expect(@vehicle.year).to eq("2001")
     end

     it "has a make" do
        expect(@vehicle.make).to eq("Honda")
     end

     it "has a model" do
        expect(@vehicle.model).to eq("Civic")
     end

     it "can speed?" do
        expect(@vehicle.speeding?).to be(false)
     end

     it "can speed vroom" do
        @vehicle.speed
        expect(@vehicle.speeding?).to be(true)
     end
     it "can have passengers" do
        expect(@vehicle.passengers).to eq([])
     end

     describe "it has passengers" do
        before(:each) do
            @charlie = Passenger.new({"name" => "Charlie", "age" => 18}) 
            @jude = Passenger.new({"name" => "Jude", "age" => 20}) 
            @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
        end

        it "can add passengers" do
            @vehicle.add_passenger(@charlie)  
            @vehicle.add_passenger(@jude)    
            @vehicle.add_passenger(@taylor)  
            expect(@vehicle.passengers).to eq([@charlie, @jude, @taylor])
        end

        it "can see number of adults" do
            @vehicle.add_passenger(@charlie)  
            @vehicle.add_passenger(@jude)    
            @vehicle.add_passenger(@taylor)  
            expect(@vehicle.passengers).to eq([@charlie, @jude, @taylor])
            expect(@vehicle.num_adults).to eq(2)
        end
     end
end
   
