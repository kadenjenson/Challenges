require 'pry'

  # deck
  # deal cards to player
  # deal cards to dealer
  # hit / stay option player
  # hit / stay option for dealer
  # win condition; compare hands bigger wins if not > 21
@cpu_hand = []
@human_hand = []
@decks = ['Ah ', '2h ', '3h ', '4h ', '5h ', '6h ', '7h ', '8h ', '9h ', '10h', 'Jh ', 'Qh ', 'Kh ','Ad ', '2d ', '3d ', '4d ', '5d ', '6d ', '7d ', '8d ', '9d ', '10d', 'Jd ', 'Qd ', 'Kd ', 'As ', '2s ', '3s ', '4s ', '5s ', '6s ', '7s ', '8s ', '9s ', '10s', 'Js ', 'Qs ', 'Ks ', 'Ac ', '2c ', '3c ', '4c ', '5c ', '6c ', '7c ', '8c ', '9c ', '10c', 'Jc ', 'Qc ', 'Kc ', 'Ah ', '2h ', '3h ', '4h ', '5h ', '6h ', '7h ', '8h ', '9h ', '10h', 'Jh ', 'Qh ', 'Kh ','Ad ', '2d ', '3d ', '4d ', '5d ', '6d ', '7d ', '8d ', '9d ', '10d', 'Jd ', 'Qd ', 'Kd ', 'As ', '2s ', '3s ', '4s ', '5s ', '6s ', '7s ', '8s ', '9s ', '10s', 'Js ', 'Qs ', 'Ks ', 'Ac ', '2c ', '3c ', '4c ', '5c ', '6c ', '7c ', '8c ', '9c ', '10c', 'Jc ', 'Qc ', 'Kc ']
  


  def play
    2.times do 
      @human_hand << @decks.sample
    end
    sum_cards
    hit_or_stay
  end
  
 def sum_cards
    @total = []
    @value = []
    @human_hand.each do |card|

     p split_val = card.split(//).compact

    value = split_val[0]

     if value == "A" || value == "J" || value == "Q" || value == "K"
      # it's value is 10
    end



      case value
        when value == "A"
          puts "you have an Ace"
        when value == "K"
          puts "you have an King"
        when value == "J"
          puts "you have an Jack"
        when value == "Q"
          puts "you have an Queen"
        else
          puts "this is a number"
      end
    end
  end

  def hit
    @human_hand << @decks.sample
  end
  
  def hit_or_stay
    puts "Here is your hand. #{@human_hand}. Would you like to hit or stay?"
      input = gets.chomp.downcase
    
      if input == "hit"
        hit
        hit_or_stay
      else
        puts "You stay"
      end
  end






play











