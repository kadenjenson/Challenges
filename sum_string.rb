
def string(*sum)
  sum = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "a", "13", "14", "15", "16", "17", "18", "19", "20"] 
  sum.select {|i| i.is_a? Integer}.reduce(0, :+)
end

p string