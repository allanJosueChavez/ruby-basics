class Guard < Human
    attr_accessor :area_assigned, :employee_id
    
    def arrive
        puts "I'm arriving..."
    end 
    
    def work
        puts "Guard is watching the area: #{area_assigned}"
    end

    def leave
        puts "I'm leaving..."
    end

 end