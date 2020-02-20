require_relative 'bike'

class DockingStation
 attr_reader :bikes

    def initialize
       @bikes = []
    end

    def release_bike
        fail "no bikes available" unless @bikes.any?
        @bikes.pop
    end

    def dock(bike)
        fail "No space in docking station" unless (@bikes.empty? || @bikes.length < 20)
        @bikes << bike
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