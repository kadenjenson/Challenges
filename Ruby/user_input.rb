def question
  p "What is your name?"
  name = gets.chomp
  
    if name.downcase == 'jenson' || name.downcase == 'kaden'
      p "Welcome #{name.capitalize}!"
    else 
      p "Get outta here"
  end
end

question

# add if you want it to not matter if you enter just a nickname name.downcase.match/^kade/