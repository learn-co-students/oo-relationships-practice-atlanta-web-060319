require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jerry = Passenger.new("Jerry Garcia")
ronnie = Passenger.new("Ronie Rincon")
mark = Passenger.new("Mark McGuire")

john = Driver.new("John Denver")
rodney = Driver.new("Rodney Farva")
ram = Driver.new("Arcot Ramathorn")

ride1 = Ride.new(jerry, john, 3.0)
ride2 = Ride.new(ronnie, rodney, 7.2)
ride3 = Ride.new(mark, ram, 4.5)



Pry.start