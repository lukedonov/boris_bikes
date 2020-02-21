require_relative 'bike'

class DockingStation
  attr_reader :bikes

    DEFAULT_CAPACITY = 20
    # STATUS = true
    def initialize
       @bikes = []
       @capacity = DEFAULT_CAPACITY
      #  @status = STATUS
    end

    def release_bike
        fail "no bikes available" if empty?
        # @bikes.each_with_index do |bike,index|
        #   @bikes.delete_at(index) if bike.value?(true)
        # end
      fail 'bike broken'
    end

    def dock(bike)
        fail "No space in docking station" if full?
       
        # @status = status 
        @bikes << bike
    end

    # def dock_broken(bike)
    #   @bikes << 


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


