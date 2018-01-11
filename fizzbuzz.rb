# This is the fizz buzz method. It goes 1 through 100 and grabs the numbers divisible by 3 and 5. If the number is divisible by both, it will 
# print a different number.



1.upto(100) do |num|

  if num % 15 == 0 ## this can be written out like this as well but it makes more sense to write it the first way 
                   ## since 3 x 5 = 15 any ways.
                   ## num % 3 == 0 && num % 5 == 0
    puts "Fizzbuzz"
  elsif num % 3 == 0 
    puts "Fizz"
  elsif num % 5 == 0
      puts "Buzz"
  else
    puts num
  end
  
end