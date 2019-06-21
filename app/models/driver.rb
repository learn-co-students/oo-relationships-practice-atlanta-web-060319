class Driver
    
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
        Passenger.all.select do |ride|
            ride.passenger == self
        end
    end

    def passengers
        self.rides.map do |ride|
            ride.passenger
        end
    end

    def self.all
        @@all
    end

end
