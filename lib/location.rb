
class Location

    attr_accessor :rent, :address, :restaurant, :rent

    @@all = []

    def initialize(address, restaurant, rent)
        @address = address
        @restaurant = restaurant
        @rent = rent
        @@all << self
    end

    def hire_employee(name, pay)
        Employee.new(name, pay, self)
    end

    def self.all
        @@all
    end

    def self.all_addresses
        all.map do |location|
            location.address
        end
    end

end
