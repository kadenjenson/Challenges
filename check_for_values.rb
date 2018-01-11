value_bank = %w(one two three four five)

def find_values(value_bank)
  puts "Type a sentence: " 
  input = gets.chomp.downcase.split
  input.each do |value|
    if value_bank.include?(value)
      puts "Looks like theres some matching values in your sentence."
    else
      puts "OOooo try again sweetie."
    end
  end

  puts "Would you like to try another? y = yes n = no"
  again = gets.chomp.downcase
  if again == "y"
    find_values(value_bank)
  end
end
 
  find_values(value_bank)