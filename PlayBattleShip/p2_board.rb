@p2_spaces = {"a0" => " ", "a1" => " ", "a2" => " ", "a3" => " ", "a4" => " ",
          "b0" => " ", "b1" => " ", "b2" => " ", "b3" => " ", "b4" => " ",
          "c0" => " ", "c1" => " ", "c2" => " ", "c3" => " ", "c4" => " ",
          "d0" => " ", "d1" => " ", "d2" => " ", "d3" => " ", "d4" => " ",
          "e0" => " ", "e1" => " ", "e2" => " ", "e3" => " ", "e4" => " "
          }

def p2_grid
  puts "    0   1   2   3   4  "
  puts "  |---|---|---|---|---|"
  puts "A | #{@p2_spaces["a0"]} | #{@p2_spaces["a1"]} | #{@p2_spaces["a2"]} | #{@p2_spaces["a3"]} | #{@p2_spaces["a4"]} |"
  puts "  |---|---|---|---|---|"
  puts "B | #{@p2_spaces["b0"]} | #{@p2_spaces["b1"]} | #{@p2_spaces["b2"]} | #{@p2_spaces["b3"]} | #{@spaces["b4"]} |"
  puts "  |---|---|---|---|---|"
  puts "C | #{@p2_spaces["c0"]} | #{@p2_spaces["c1"]} | #{@p2_spaces["c2"]} | #{@p2_spaces["c3"]} | #{@p2_spaces["c4"]} |"
  puts "  |---|---|---|---|---|"
  puts "D | #{@p2_spaces["d0"]} | #{@p2_spaces["d1"]} | #{@p2_spaces["d2"]} | #{@p2_spaces["d3"]} | #{@p2_spaces["d4"]} |"
  puts "  |---|---|---|---|---|"
  puts "E | #{@p2_spaces["e0"]} | #{@p2_spaces["e1"]} | #{@p2_spaces["e2"]} | #{@p2_spaces["e3"]} | #{@p2_spaces["e4"]} |"
  puts "  |===|===|===|===|===|"
  puts
end

@h_or_m2 = {"a0" => " ", "a1" => " ", "a2" => " ", "a3" => " ", "a4" => " ",
          "b0" => " ", "b1" => " ", "b2" => " ", "b3" => " ", "b4" => " ",
          "c0" => " ", "c1" => " ", "c2" => " ", "c3" => " ", "c4" => " ",
          "d0" => " ", "d1" => " ", "d2" => " ", "d3" => " ", "d4" => " ",
          "e0" => " ", "e1" => " ", "e2" => " ", "e3" => " ", "e4" => " "
          }

def p2_empty
  puts "    0   1   2   3   4  "
  puts "  |---|---|---|---|---|"
  puts "A | #{@h_or_m2["a0"]} | #{@h_or_m2["a1"]} | #{@h_or_m2["a2"]} | #{@h_or_m2["a3"]} | #{@h_or_m2["a4"]} |"
  puts "  |---|---|---|---|---|"
  puts "B | #{@h_or_m2["b0"]} | #{@h_or_m2["b1"]} | #{@h_or_m2["b2"]} | #{@h_or_m2["b3"]} | #{@h_or_m2["b4"]} |"
  puts "  |---|---|---|---|---|"
  puts "C | #{@h_or_m2["c0"]} | #{@h_or_m2["c1"]} | #{@h_or_m2["c2"]} | #{@h_or_m2["c3"]} | #{@h_or_m2["c4"]} |"
  puts "  |---|---|---|---|---|"
  puts "D | #{@h_or_m2["d0"]} | #{@h_or_m2["d1"]} | #{@h_or_m2["d2"]} | #{@h_or_m2["d3"]} | #{@h_or_m2["d4"]} |"
  puts "  |---|---|---|---|---|"
  puts "E | #{@h_or_m2["e0"]} | #{@h_or_m2["e1"]} | #{@h_or_m2["e2"]} | #{@h_or_m2["e3"]} | #{@h_or_m2["e4"]} |"
  puts "  |===|===|===|===|===|"
  puts
end

def p2_attack
  while @p2hit <= 4
    p2_empty
    puts
    puts "Player 2, Attack the enemy!!"
    fire = gets.chomp
      if @spaces[fire] == "S"
        puts "Thats a hit!"
        @p2hit += 1
        @spaces[fire] = "X"
        @h_or_m2[fire] = "X"
        p2_empty
      elsif @spaces[fire] == "X" || @spaces[fire] == "o"
        puts "You already shot there! Fire again!"
        p2_attack
      else @spaces[fire] = "o", @h_or_m2[fire] = "o"
        puts 
        puts "Thats a miss. Gosh darnit."
        p2_empty
      end
      puts "Pass the controls to Player 1. You got 3 seconds."
      sleep 3
      system 'clear'
    return
  end
end









