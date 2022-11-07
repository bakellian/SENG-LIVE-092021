class Donation 

    @@all = [] #class variable - accessible to the class + in it's scope 

    attr_accessor :amount, :organization, :date, :completed
    attr_reader :id #id is read only so it can't be reassigned 

    #method to initialize + save at the same time
    def self.create(attributes) #class method. attributes passed in as the argument
        self.new(attributes).save # self.new returns instance and then chaining .save on the returned instance
    end

    def self.find_by_id(id)
        #check all instances and find the one that matches the given ID
        @@all.find do |donation| #find is used for searching, map is used if you want to change something
            donation.id == id
        end
    end

    #to invoke all => Donation.all
    def self.all #class method - called on the class itself. Use self so it has the ability to be re-used y other classes
        #self: will return the class  because we're inside the scope of the class 
        @@all 
    end

    def self.primary_key #to increment the ID - could write it in initialize mwthod but better to seperate concerns into diff methods
        #build logic - if first element id = 1
        # else increment by 1 
        if @@all.empty?
            1
        else 
            @@all[-1].id + 1 #[-1] takes the last piece in the array 
            #grab the last istance, read its id value and increment by 1
        end
    end 

    def self.pending
        @@all.filter do |donation|
            donation.completed == false
        end
    end

    def initialize(organization:, amount:, date:, completed:) #can provide more flexibility by passing in keyword arguments
        @id = Donation.primary_key
        @organization = organization 
        @amount = amount 
        @date = date 
        @completed = completed 
    end

    def save
        #add new instance to @all arr and return an instance
        #a method that saves each new instance
        @@all << self #self is refering to the new instance 
        self #returns the instance 
    end

    def read_donation
        puts "Organization: #{@organization}"
        puts "Amount: #{@amount}"
        puts "Date: #{@date}"
        puts "Completed? #{@completed}"
    end

end 