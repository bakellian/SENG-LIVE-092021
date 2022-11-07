class Pizza

    attr_accessor :name, :toppings, :desc

    @@all = []

    def self.all
        @@all
    end

    def self.find_by_name(name)
        # @@all.find do |pizza| #vriable btwn pipes is a block parameter
        #     pizza.name == name #find looks for a condition that rtrns true/f and returns first value that meets 
        # end
    end

    def save
        @@all << self
        self
    end
    
    def initialize(name:, toppings:, desc:) 
        @name = name 
        @toppings = toppings 
        @desc = desc 
    end

    def details 
        puts ""
        puts "Pizza Details:"
        puts self.name 
        puts self.toppings
        puts self.desc
        puts ""
    end
    
end