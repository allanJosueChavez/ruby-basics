class Passenger < Human

    attr_accessor :ticket_number, :seat_number
    include Baggage
    
    def buy_ticket
        puts "#{name} is getting a ticket"
    end 

    def wait
        puts "#{name} is waiting for the boarding time"
    end

    def board 
        puts "#{name} is getting on board"
    end

    def get_off
        puts "#{name} is getting off the plane"
    end

    def check_in
        puts "I'm checking in"
    end

    def check_out
        puts "I'm checking out"
    end
 end