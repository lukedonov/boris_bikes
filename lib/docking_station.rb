require_relative 'bike'

class DockingStation
    DEFAULT_CAPACITY = 20
    def initialize
       @bikes = []
       @capacity = DEFAULT_CAPACITY
    end

    def release_bike
        fail "no bikes available" if empty?
        @bikes.pop
    end

    def dock(bike)
        fail "No space in docking station" if full?
        @bikes << bike
    end

    def capacity(num)
      @capacity = num
    end

    private
    def full?
      @bikes.count >= @capacity
    end
    
    def empty?
      @bikes.empty?
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