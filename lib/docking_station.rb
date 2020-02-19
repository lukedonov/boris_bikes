require_relative 'bike'

class DockingStation
  attr_reader :bikes

    # def initialize
    #   @bike
    # end
    
    def release_bike
      Bike.new
    end

    def dock(bike)
      # @bikes.push(bike)
      bike
    end

    def bike

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