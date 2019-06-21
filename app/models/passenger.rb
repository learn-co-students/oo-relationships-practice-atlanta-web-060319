class Passenger
    
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
        Ride.all.select do |ride|
            ride.driver == self
        end
    end

    def drivers
        self.rides.map do |ride|
            ride.driver
        end
    end
    
    
    def self.all
        @@all
    end

end
