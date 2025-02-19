class Park
    attr_reader :name, :price, :vehicles, :passengers
    def initialize(name, price)
        @name = name
        @price = 30
        @vehicles = []
        @passengers = []
    end

    def add_vehicle(vehicle)
        @vehicles << vehicle
    end

    def add_passenger(passenger)
        @passengers << passenger
    end
    def revenue(cost)
        @passengers.find_all
    end
end