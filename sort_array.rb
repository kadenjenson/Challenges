def sort_array 
  arr = ["q", "w", "e", "r", "t", "y", "u", "i", "o", "p", "a", "s", "d", "f", "g", "h", "j", "k", "l", "z", "x", "c", "v", "b", "n", "m"]
  arr.sort.push("kay")
end

p sort_array

p ["Apple", "banana", "iPhone", "orange", "zebra", "cat", "Mars", "Kaden", "Zealot"].sort_by(&:swapcase)
#"banana", "cat", "iPhone", "orange", "zebra", "Apple", "Kaden", "Mars"

p ["Apple", "banana", "iPhone", "orange", "zebra", "cat", "Mars", "Kaden", "Zealot"].sort_by{|x| [x[0].upcase==x[0] ? 1:0,x] }
#"banana", "cat", "iPhone", "orange", "zebra", "Apple", "Kaden", "Mars"

p ["Apple", "banana", "iPhone", "orange", "zebra", "cat", "Mars", "Kaden", "Zealot"].sort
#"Apple", "Kaden", "Mars", "Zealot", "banana", "cat", "iPhone", "orange", "zebra"