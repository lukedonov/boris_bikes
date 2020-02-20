require_relative 'bike'

class DockingStation
  attr_reader :bike, :capacity

    
    def release_bike
        fail "no bikes available" unless @bike
        @bike
    end

    def dock(bike)
      raise "No space in docking station"if @bike
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