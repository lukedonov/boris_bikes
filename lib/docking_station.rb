
class DockingStation
    
    def release_bike
      @bike = Bike.new
    end

    def dock(bike)
        # puts "bike has been docked"
        @bike = bike
    end

    def bike 
        @bike
    end

end

test = DockingStation.new
test.dock("bike")