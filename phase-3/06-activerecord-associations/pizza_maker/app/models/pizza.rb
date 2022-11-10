class Pizza < ActiveRecord::Base
    has_many :pizza_toppings
    has_many :toppings, through: :pizza_toppings

    def self.alpha
        self.order(:name) #don't need to have self here because self is implicitly called
    end

    def num_of_toppings
        self.toppings.count #self because we are referencing the pizza instance that we are calling the method on - also wouldn't need to put self in here if you didnt want to 
    end
end