def normal_loop
  i = 0 
  loop do 
    i += 2
    puts i 
    if i == 20
      break
    end
  end 
end

# loop that skips to the next section of the function

def skip
  num = 0 
  loop do
    num += 1
    if num == 10
      next
    end
    if num == 20
      break
    end
    puts num
  end
end

normal_loop
skip