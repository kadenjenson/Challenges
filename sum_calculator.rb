def ask_method 
  puts "Do you want to add or multiply?"
  answer = gets.chomp

    if answer.downcase == 'add'
      add
    elsif answer.downcase == 'multiply'
      multiply
    else
      puts "Please choose method"
  end
end


def add
  entries = { }
  (1..3).each do |n|
    puts "Give me 3 numbers %d" % n
    entries[:"num#{n}"] = gets.chomp.to_i
  end
  puts "The sum is %d" % entries.values.inject(0, :+)
end


def multiply
  entries = { }
  (1..3).each do |n|
    puts "Give me 3 numbers %d" % n
    entries[:"num#{n}"] = gets.chomp.to_i
  end
  puts "The sum is %d" % entries.values.inject(1, :*)
end

ask_method

