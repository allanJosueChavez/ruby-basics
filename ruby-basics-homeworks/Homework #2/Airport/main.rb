require_relative "./models/Human"
require_relative "./models/Airplane"
require_relative "./models/Baggage"
require_relative "./models/Collaborator"
require_relative "./models/Facility"
require_relative "./models/Flight"
require_relative "./models/Guard"
require_relative "./models/Machine"
require_relative "./models/Passenger"
require_relative "./models/Transport"

def init
    puts " - Airport-System booting..."
    plane = Airplane.new        
    facility = Facility.new
    facility.place_name = "waiting area"
    facility.establish
    flight = Flight.new
    flight.date = "24/09"
    flight.create
    guard = Guard.new
    guard.area_assigned = "Gate"
    guard.work
    passenger = Passenger.new
    passenger.name = "Allan"
    passenger.buy_ticket
    passenger.wait
    machine = Machine.new
    machine.function = "scan passenger's baggage"
    machine.turn_on
    machine.power_off
    passenger.entering
    transport = Transport.new
    transport.function = "Taking passengers to the loading area"
    transport.use
    passenger.board
    plane.take_off
    plane.land
    passenger.get_off
end
init