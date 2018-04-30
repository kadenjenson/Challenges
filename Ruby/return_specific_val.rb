#Counts the vowels and returns each one individually

def return_values(str)
	vowels = %w[a e i o u]
	bank = []
	returnedVals = 0
	str.split("").each do |char|
		vowels.each do |val|
			if char == val
				returnedVals += 1
				bank << char
			end
		end
	end
	puts bank
	puts returnedVals
end

return_values("london paris amsterdam berlin rome poland")

