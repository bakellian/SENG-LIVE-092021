class Topping < ApplicationRecord::Base
    has_many :pizza_toppings
end