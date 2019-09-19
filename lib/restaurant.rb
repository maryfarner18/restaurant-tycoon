class Restaurant

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    # Returns the total amount this Restaurant pays for all of its Locations
    def total_rent
        rent = locations.map {|location| location.rent}
        rent.sum
    end

    def locations
        Location.all.select do |location|
            location.restaurant == self
        end
    end

    def employees
        Employee.all.select do |employee|
            employee.restaurant == self
        end
    end

    def total_pay
        pay = employees.map {|employee| employee.pay}
        pay.sum
    end

    def total_expenses
        total_pay + total_rent
    end

    def create_location(address, rent)
        Location.new(address, self, rent)
    end

    def self.all
        @@all
    end


end
