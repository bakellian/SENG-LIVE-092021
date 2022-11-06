class Donation

    #a macro (a method) that is prewritten. Setter and getter method
    #attr_reader - read only | attr_writer - write only
    #not invoked upon in the initialize method 
    attr_accessor :organization, :amount, :date, :completed 

    #special method (always needs to be called "initialize") that gets invoked simultneously with the .new method. 
    #.new will look for "initialize" and then run it
    def initialize(organization, amount, date, completed)
        #instance vriables use @, bound to the instance of which they were defined for. They are properties we are giving to our instances
        @organization = organization, 
        @amount = amount, 
        @date = date,
        @completed = completed
    end

    #getter + setter methods replacted with attr_accessor
    #getter method: instance method - and instance con be the only receiver of this method (ex: donation.amount)
    # def amount 
    #     #self: refers to an object. Receiver of the method currently being invoked 
    #     binding.pry
    #     @amount
    # end 

    # #setter method (needs to have the =, how code knows its a setter, has no functional puspose - just convention)
    # def amount=(amount)
    #     @amount = amount
    # end

    #instance method being called on an instance of donation. In this scope we have access to the donation instance + its variables 

    def read_donation 
        puts "Organization: #{@organization}"
        puts "Amount: #{@amount}"
        puts "Date: #{@date}"
        puts "Completed? #{@completed}"
    end
    
end 