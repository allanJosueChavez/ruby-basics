module Baggage
    attr_accessor :weight, :size
    
    def initialize()
        puts "Loading a passenger's baggage"
    end
  
    def entering
        puts "Entering on baggage carrousel..."
    end
  
    def taking_out
        puts "Taking out of the carrousel"
    end
end