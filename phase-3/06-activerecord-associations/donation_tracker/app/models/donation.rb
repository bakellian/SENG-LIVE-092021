class Donation < ActiveRecord::Base

    belongs_to :donor #one to one relationship (we can utilize certain methods because of these macros, a method that is creating other methods. Donor is the argument being passed in. it is an object. Belongs_to has methods that we can call on our dontion class records)
    # gives a .donor instance method to act as a getter and a .donor= instance method to act as a setter 

    #how we can use: 
    #1. retreive a donaton record
    #2. retreive the donor that to which that donation record belongs to 

    #also set a donor for a donation ex: donation.donor = "bridget"
    belongs_to :organization 
    #.organization => reader
    #.organization= => writer/setter

    # def self.pending
    #     @@all.filter do |donation|
    #         donation.completed == false
    #     end
    # end

    # replace with pending method active record method
    def self.pending 
        self.where(completed: false) #pass a condition where it rtrns true | passing in a key / value pair | self is referring to the class
    end

   
end 