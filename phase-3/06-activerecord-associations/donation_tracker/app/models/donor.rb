class Donor < ActiveRecord::Base #inheriting from the base module in active record so we can use its metods 
    has_many :donations #establishing a one to many relationship
    #can call instance method .donations on a record of Donor to retrn an array of all donation a donor has made 
    #.donations << => allows us to shovel in new donation to donors donation collection. 

    has_many :organizations, through: :donations #mant to many relationship (have to have many of the donations to hve many of the organizations)
    #has many through behaves like the has_many only diff btwn the two is that we are establishing a has many relationship with the organizations through the organizations table
    # .organizations => rtrns donors organizations 
    # .organizations << add new org to our donors orgs 
end