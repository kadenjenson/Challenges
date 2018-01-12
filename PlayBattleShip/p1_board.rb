@spaces = {"a0" => " ", "a1" => " ", "a2" => " ", "a3" => " ", "a4" => " ",
          "b0" => " ", "b1" => " ", "b2" => " ", "b3" => " ", "b4" => " ",
          "c0" => " ", "c1" => " ", "c2" => " ", "c3" => " ", "c4" => " ",
          "d0" => " ", "d1" => " ", "d2" => " ", "d3" => " ", "d4" => " ",
          "e0" => " ", "e1" => " ", "e2" => " ", "e3" => " ", "e4" => " "
          }

def grid
  puts "    0   1   2   3   4  "
  puts "  |---|---|---|---|---|"
  puts "A | #{@spaces["a0"]} | #{@spaces["a1"]} | #{@spaces["a2"]} | #{@spaces["a3"]} | #{@spaces["a4"]} |"
  puts "  |---|---|---|---|---|"
  puts "B | #{@spaces["b0"]} | #{@spaces["b1"]} | #{@spaces["b2"]} | #{@spaces["b3"]} | #{@spaces["b4"]} |"
  puts "  |---|---|---|---|---|"
  puts "C | #{@spaces["c0"]} | #{@spaces["c1"]} | #{@spaces["c2"]} | #{@spaces["c3"]} | #{@spaces["c4"]} |"
  puts "  |---|---|---|---|---|"
  puts "D | #{@spaces["d0"]} | #{@spaces["d1"]} | #{@spaces["d2"]} | #{@spaces["d3"]} | #{@spaces["d4"]} |"
  puts "  |---|---|---|---|---|"
  puts "E | #{@spaces["e0"]} | #{@spaces["e1"]} | #{@spaces["e2"]} | #{@spaces["e3"]} | #{@spaces["e4"]} |"
  puts "  |===|===|===|===|===|"
  puts
end

@h_or_m1 = {"a0" => " ", "a1" => " ", "a2" => " ", "a3" => " ", "a4" => " ",
          "b0" => " ", "b1" => " ", "b2" => " ", "b3" => " ", "b4" => " ",
          "c0" => " ", "c1" => " ", "c2" => " ", "c3" => " ", "c4" => " ",
          "d0" => " ", "d1" => " ", "d2" => " ", "d3" => " ", "d4" => " ",
          "e0" => " ", "e1" => " ", "e2" => " ", "e3" => " ", "e4" => " "
          }

def p1_empty
  puts "    0   1   2   3   4  "
  puts "  |---|---|---|---|---|"
  puts "A | #{@h_or_m1["a0"]} | #{@h_or_m1["a1"]} | #{@h_or_m1["a2"]} | #{@h_or_m1["a3"]} | #{@h_or_m1["a4"]} |"
  puts "  |---|---|---|---|---|"
  puts "B | #{@h_or_m1["b0"]} | #{@h_or_m1["b1"]} | #{@h_or_m1["b2"]} | #{@h_or_m1["b3"]} | #{@h_or_m1["b4"]} |"
  puts "  |---|---|---|---|---|"
  puts "C | #{@h_or_m1["c0"]} | #{@h_or_m1["c1"]} | #{@h_or_m1["c2"]} | #{@h_or_m1["c3"]} | #{@h_or_m1["c4"]} |"
  puts "  |---|---|---|---|---|"
  puts "D | #{@h_or_m1["d0"]} | #{@h_or_m1["d1"]} | #{@h_or_m1["d2"]} | #{@h_or_m1["d3"]} | #{@h_or_m1["d4"]} |"
  puts "  |---|---|---|---|---|"
  puts "E | #{@h_or_m1["e0"]} | #{@h_or_m1["e1"]} | #{@h_or_m1["e2"]} | #{@h_or_m1["e3"]} | #{@h_or_m1["e4"]} |"
  puts "  |===|===|===|===|===|"
  puts
end

def p1_attack
  while @hit <= 4
    p1_empty
    puts
    puts "Player One, Attack the enemy!!"
    fire = gets.chomp
      if @p2_spaces[fire] == "S"
        puts "Thats a hit!"
        @hit += 1
        @p2_spaces[fire] = "X"
        @h_or_m1[fire] = "X"
        p1_empty
      elsif @p2_spaces[fire] == "X" || @p2_spaces[fire] == "o"
        puts "You already shot there! Fire again!"
        p1_attack
      else @p2_spaces[fire] = "o", @h_or_m1[fire] = "o"
        puts 
        puts "Thats a miss. Gosh darnit."
        p1_empty
      end
      puts "Pass the controls to Player 2. You got 3 seconds."
      sleep 3
      system 'clear'
    return
  end
end





