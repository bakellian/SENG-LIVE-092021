class Pizza

    attr_accessor :name, :toppings, :desc

    def initialize(name, toppings, desc) #parameters to be passed in and assigned to instance variables
        @name = name, 
        @toppings = toppings
        @desc = desc
    end

    def details #instance method
        puts self.name
        puts self.toppings
        puts self.desc
    end

    
end