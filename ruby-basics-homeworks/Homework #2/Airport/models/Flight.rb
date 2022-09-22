class Flight
    attr_accessor :date, :time, :origin, :destination

    def create
        puts "Creating a new flight #{date}"
    end
end
