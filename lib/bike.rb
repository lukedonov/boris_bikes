
class Bike
    # STATUS = true
    # def initialize
    #     @working_condition = STATUS
    # end
    
    def report_broken
        @broken = true
    end
    
    def broken?
      @broken
    end
   
    def working?
      true
    end


end