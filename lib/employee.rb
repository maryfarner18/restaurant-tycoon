class Employee

    attr_accessor :name, :restaurant, :pay, :location

    @@all = []

    def initialize(name, pay, location)
        @name = name
        @pay = pay
        @restaurant = location.restaurant
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_pay
        sum = 0
        all.each do |employee|
            sum += employee.pay
        end
        sum / all.length 
    end
end
