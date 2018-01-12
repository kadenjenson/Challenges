require_relative 'p1_board'
require_relative 'p2_board'

def p1_placement
  puts "Player 1, prepare for battle."
  puts "You have a Submarie with 3 spaces. Chose where to place it"
  puts "EX. c3, c2, c1"
    3.times do |i|
      @player1 = gets.chomp
      @spaces[@player1] = "S"
    end
      grid
      puts
      puts "Now place your Patrol Boat, which has 2 spaces."
    2.times do |i|
      @player1 = gets.chomp
      @spaces[@player1] = "S"
    end
    grid
      puts "Pass the controls to Player 2. You got 3 seconds."
      sleep 3
      system 'clear'
  p2_placement
end

def p2_placement
  p2_grid
  puts "Player 2, prepare for battle."
  puts "You have a Submarie with 3 spaces. Chose where to place it"
  puts "EX. c3, c2, c1"
    3.times do |i|
      @player2 = gets.chomp
      @p2_spaces[@player2] = "S"
    end
      p2_grid
      puts
      puts "Now place your Patrol Boat, which has 2 spaces."
    2.times do |i|
      @player2 = gets.chomp
      @p2_spaces[@player2] = "S"
    end
    p2_grid
      puts "Pass the controls to Player 1. You got 3 seconds."
      sleep 3
      system 'clear'
  win_conditions
end

def win_conditions 
  @hit = 0
  @p2hit = 0
  while @hit <= 4 || @p2hit <= 4
    p1_attack
    p2_attack
    if @hit == 5
      puts "Player 1 wins!!"
      break
    elsif @p2hit == 5
      puts "Player 2 wins!"
      break
    else
      puts "Nice"
    end
  end
end

grid
p1_placement














