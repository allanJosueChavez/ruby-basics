class Collaborator < Human
    attr_accessor :area_assigned, :duties
    
    def arrive
        puts "I'm arriving..."
    end 
    
    def work
        puts "Happily working..."
    end

    def having_lunch
        puts "Having lunch"
    end

    def leave
        puts "I'm leaving..."
    end

 end