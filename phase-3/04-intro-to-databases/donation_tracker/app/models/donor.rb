class Donor < ActiveRecord::Base
    #associteion macro: metaprograming => method that produces another method 
    has_many :donations #relationship with donations needs to be established first

    #gives us methods like:
    # .donations => getter method (santa.donation => return all of santa's donations)
    # can also shovel in .donations << newdonation
    has_many :organizations, through: :donations 
end