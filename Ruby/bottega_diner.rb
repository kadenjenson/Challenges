@menu = ["Gourmet Burger", 
          "Cajun Pasta", 
          "Cereal", 
          "Shrimp", 
          "One Crouton", 
          "Fillet Minon", 
          "Quesadilla", 
          "20lb. Ham",
          "a walmart bag full of poop"]

@sides = ["A handfull of dry leaves", 
          "Schezwan Sauce", 
          "Dissapointment", 
          "Chicken Nuggets", 
          "Salad", 
          "An already licked lollipop", 
          "Baby Carrots",
          "Kim's tears"]

@comments = ["My dead mother has better taste than you.", 
              "I cried for six hours today", 
              "I still have a crush on Matt Damon", 
              "Oo thats my favorite!", 
              "Gross", 
              "I am sorry for whatever happened to your taste buds."]

@prices = ["$0.02", 
            "one acorn",
            "$6.66",
            "ONE MILLION DOLLARS",
            "$14.98",
            "your favorite pokemon card",
            "fiddy cents"]

@big_portion = []
@little_portion = []

def welcome
  puts
  puts "Welcome to Bottega Diner! Our chef special today is #{@menu.sample} with #{@sides.sample}. So what can I get started for you?"
  puts 
  puts "Entrees"
  puts "_________________"
  puts @menu
  puts "-----------------"
  puts 
  puts "Sides"
  puts "_________________"
  puts @sides
  puts "-----------------"
  puts 
  puts "What would you like for an entree?"
  puts
  place_order
end

def place_order
  @le_entree = gets.chomp
  main = @menu.grep /#{@le_entree}/
  if @le_entree == main.map { |i| i.to_s }.join(",")
    @big_portion << @le_entree
    puts "."
    puts "."
    puts "."
    puts @comments.sample
    puts
    puts
    puts "Now what what would you like for a side?"
    puts
    order_sides
  else
    puts
    puts
    puts 'Oo sorry we dont have that. Choose something from the menu sweetie.'
    puts
    puts
    place_order
  end
end

def order_sides
  @le_side = gets.chomp
  side = @sides.grep /#{@le_side}/
  if @le_side == side.map { |i| i.to_s }.join(",")
    @little_portion << @le_side
    puts
    puts
    puts "Alright I have and order for #{@big_portion} and #{@little_portion}, is that correct? (Y for yes, N for no)"
    puts
    puts 
  else
    puts
    puts "Please order a side."
    puts
    order_sides
  end
  confirm
end

def confirm
  @answer = gets.chomp
  if @answer == 'Y'
    puts
    puts "Alright that will be #{@prices.sample} please."
    puts 
  elsif @answer == 'N'
    puts 
    puts "Find a different place to eat loser."
    puts 
  else
    puts 
    puts "Sorry, didn't quite catch that."
    puts 
    confirm
  end
end

welcome











