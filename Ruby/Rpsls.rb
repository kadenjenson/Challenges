
system 'clear'

puts
puts "Welcome to ROCK PAPER SCISSORS LIZARD SPOCK!!!"
puts 
puts  "Here's the rules."
puts
puts "Scissors cuts Paper covers Rock crushes Lizard poisons Spock smashes Scissors decapitates Lizard eats Paper disaproves Spock vaporizes Rock crushes Scissors"
  
def rpsls
  puts 
  puts "Rock = r"
  puts "Paper = p"
  puts "Scissors = s"
  puts "Lizard = l"
  puts "Spock = sp"
  puts
  user
end

def user
  puts "Chose your fighter!!"
  puts
  @player = gets.chomp.downcase
  winning_case
end

def computer
  @cpu = %w(r p s l sp) 
  @cpu.sample
end

def winning_case
  if rule_engine[computer.to_sym].include? @player
    puts "Computer wins!"
    computers_blow
  elsif rule_engine[@player.to_sym].include? computer
    puts "You win!"
    players_blow
  else
    puts "Its a tie!"
  end
end

def rule_engine
  {
    'r': ['s', 'l'],
    'p': ['r', 'sp'],
    's': ['p', 'l'],
    'l': ['sp', 'p'],
    'sp': ['s', 'r']
  }
end

def computers_blow
  if computer == 'r' && @player == 's'
    puts "Rock destroys Scissors!"
  elsif computer == 'r' && @player == 'l'
    puts "Rock crushes Lizard into a bloody mess!"
  elsif computer == 'p' && @player == 'r'
    puts "Paper blinds Rock!"
  elsif computer == 'p' && @player == 'sp'
    puts "Paper disaproves of Spock!"
  elsif computer == 's' && @player == 'p'
    puts "Scissors cut Paper to shreads!"
  elsif computer == 's' && @player == 'l'
    puts "Scissors decapitates Lizard!"
  elsif computer == 'l' && @player == 'p'
    puts "Lizard gobbles up Paper!"
  elsif computer == 'l' && @player == 'sp'
    puts "Lizard poisons Spock!"
  elsif computer == 'sp' && @player == 's'
    puts "Spock smashes Scissors!"
  elsif computer == 'sp' && @player == 'r'
    puts "Spock vaporizes Rock!"
  else
    puts "idk"
  end
end

def players_blow
  if @player == 'r' && computer == 's'
    puts "Rock destroys Scissors!"
  elsif @player == 'r' && computer == 'l'
    puts "Rock crushes Lizard into a bloody mess!"
  elsif @player == 'p' && computer == 'r'
    puts "Paper blinds Rock!"
  elsif @player == 'p' && computer == 'sp'
    puts "Paper disaproves of Spock!"
  elsif @player == 's' && computer == 'p'
    puts "Scissors cut Paper to shreads!"
  elsif @player == 's' && computer == 'l'
    puts "Scissors decapitates Lizard!"
  elsif @player == 'l' && computer == 'p'
    puts "Lizard gobbles up Paper!"
  elsif @player == 'l' && computer == 'sp'
    puts "Lizard poisons Spock!"
  elsif @player == 'sp' && computer == 's'
    puts "Spock smashes Scissors!"
  elsif @player == 'sp' && computer == 'r'
    puts "Spock vaporizes Rock!"
  else
    puts "idk"
  end
end

def try_again
  puts
  puts "Try again?"
  puts "y = Yes"
  puts "n = No, I'm a sore loser."
  puts
  answer = gets.chomp.downcase
  if answer == 'y'
    rpsls
  else
    puts "Your shame shall follow you everywhere."
  end
end

rpsls
try_again











