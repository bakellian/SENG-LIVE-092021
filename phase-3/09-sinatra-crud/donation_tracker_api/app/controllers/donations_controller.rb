class DonationsController < ApplicationController

    #route to get all donations 
    get '/donations' do 
        donations = Donation.all
        donations.to_json
    end
    
    post '/donations' do #takes a hash as an agrument - all hashes are key value pairs
        donation = Donation.create({ 
            amount: params[:amount], #params method to pull out a particular key 
            completed: params[:completed],
            date: params[:date], 
            donor: current_user, #taken from the application conroller
            orgnaication_id: params[:organization_id]
        })
        donation.to_json #then parse through json
    end

    delete '/donations/:id' do #:id is a url parameter - makes it dynamic 
        #to remove donation we need do:
        #1. find the conation 
        donation = Donation.find(params[:id])
        #2. destroy it
        donation.destroy #destroy is a method 
    end

    patch '/donations/:id/edit' do #reqiest from front end needs to match what we have in the route 
        #1. find donation to update
        donation = Danation.find(params[:id])
        #call method .update and pass in the parameters being updated 
        donation.update({
            amount: params[:amount],
            date: params[:date]
        })
        donation.to_json
    end

    #diff between update and create: create you need all of the params - update you only need the ones that are eligible to update 



end