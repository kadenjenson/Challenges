my_array = Array.new
p my_array.class
#
#
#
my_array = []
p my_array.class
#
#
#
my_array = Array.new(3)
p my_array
#
#
#
my_array = Array.new(3, true)
p my_array
#
#
#
my_array = Array.new(3) {Array.new(3)} 
p my_array

an_array = [1, 2, 3, 4, 5, 6, 7]

def array_copy(source)
  destination = []
    source.each do |number|
      destination << number if number < 5
    return destination
  end
end

p array_copy(an_array)
