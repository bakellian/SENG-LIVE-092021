class PizzaTopping < ApplicationRecord::Base
    belongs_to :pizza
    belongs_to :topping
end