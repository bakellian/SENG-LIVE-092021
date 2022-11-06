PIZZAS = [{name: "poop pizza", toppings: "poop chucnks", desc: "a poopy"}]

def init
  puts "Welcome to the lean, mean Pizza Machine App!"
  puts "Tell us your name: "
  user = gets.strip
  puts "Awesome, #{user.capitalize}, What would you like to do?"
  menu_options
  menu_selection
  goodbye
end 

def menu_options
  puts "Enter the number of your selection, or 'exit' to leave the app."
  puts " 1. Create a new pizza!"
  puts " 2. View the list of created pizzas"
  puts " Change your mind? Type 'exit' to leave the app"
end 

def menu_selection
  input = gets.strip 

  until input == "exit"
    if input.to_i == 1
      create_pizza
    elsif input.to_i == 2
      pizzas
    else 
      puts "enter a valid option"
    end
    input = gets.strip
  end
end 

def create_pizza
  puts "Name of pizza, get creative!:"
  name = gets.strip
  puts "List your toppings: "
  toppings = gets.strip
  puts "Describe this pizza: "
  desc = gets.strip 

  # need to return a pizza hash
  new_pizza = {
    name: name, 
    toppings: toppings,
    desc: desc
  }
end 

def pizzas 
  PIZZAS.each do |pizza|
    puts "#{pizza[:name], pizza[:toppings], pizza[:desc]}"
 end
end

def goodbye
  puts "Come back when you get hungry!!!"
end 
