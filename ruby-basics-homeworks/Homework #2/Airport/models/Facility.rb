class Facility
    attr_accessor :place_name, :function, :needs_authorization
    
    def establish
        puts "Establishing a new place #{place_name}" 
    end
 end
