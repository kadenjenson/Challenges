#Bob is an angry teenager that has limited responses. 
# When he is asked a question he simply responds with "Sure"
# When nothing is said to him he responds with "Fine. Be that way."
# When he is yelled at (all uppercase) he responds with "Whoa, Chill Out!"
# All other statements will be responded with "Whatever"
# Create a program that will handle all responses.

system 'clear'

puts "Bob is an angry teen, you can try to talk to him but you won't get much out of him. I promise."

puts "If turns out Bob is a bit too much, type 'exit' at any time."

loop do
concerned_person = gets.chomp.strip
  if concerned_person == concerned_person.upcase
    puts
    puts "Chill out man!"
  elsif concerned_person.include? "?"
    puts
    puts "Sure"
  else 
    puts
    puts "Whatever"
  end

  break if concerned_person == 'exit'
end
 
  # begin
  #   concerned_person = gets.chomp.downcase
  # end