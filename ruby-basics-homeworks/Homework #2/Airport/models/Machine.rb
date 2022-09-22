class Machine
    attr_accessor :name, :model, :function
 
    def turn_on
        puts "Starting machine to #{function}"
    end
    
    def power_off
        puts "Turning off machine"
    end
    
 end
