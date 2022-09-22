class Airplane
    attr_accessor :model, :capacity

    def initialize()
      puts "Company is buying a new airplane"
    end

    def take_off
      puts "Plane is ascending..."
    end

    def land
      puts "Plane is descending..."
    end
end