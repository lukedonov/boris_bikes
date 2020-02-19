require_relative 'bike'

class DockingStation
  attr_reader :bike

    
    def release_bike
        fail "no bikes available" unless @bike
        @bike
    end

    def dock(bike)
      # @bikes.push(bike)
      @bike = bike
    end
end











 # def dock(bike)
        # puts "bike has been docked"
        # @bike = bike
    # end

#     def bike 
#         @bike
#     end







# test = DockingStation.new
# test.dock("bike")