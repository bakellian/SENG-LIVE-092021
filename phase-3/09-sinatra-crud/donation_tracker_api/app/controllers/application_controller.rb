class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    get '/' do 
        "Hello World"
    end

    private #any method defined below this keyword will not be called dorectly on an instance - these are helper functions used internally. Cant be called on from elsewhere 

    #method to keep track of who is currently logged in 
    def current_user 
        #hardcoding because we dont have authentication right now
        Donor.first
    end


end