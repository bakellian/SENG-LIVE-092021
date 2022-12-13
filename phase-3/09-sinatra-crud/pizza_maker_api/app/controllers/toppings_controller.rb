class ToppingsController < ApplicationController
    
    get '/toppings' do 
        toppings = Topping.all 
        toppings.to_json 
    end
    
    get '/toppings/:id' do 
        topping = Topping.find_by_id(params[:id])
        topping.to_json
    end

    post 'toppings' do 
        Topping.create(
            name: params[:name]
        ).to_json
    end

    patch '/toppings/:id' do 
        topping = Topping.find(params[:id])
        topping.update(
            name: params[:name]
        ) #need to put topping before .to_json because .update does not return an instance of topping. update rtrns a boolean
        topping.to_json
    end 

    delete '/toppings/:id' do 
        topping = Topping.find(params[:id])
        topping.destroy
    end


end