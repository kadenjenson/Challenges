#Counts the occurrences of each word and stores them in a hash

def spock(str)
	word_bank = str.split(' ')
	occurrences = Hash.new(0)
	word_bank.each { |word| occurrences[word.downcase] +=1 }
	return occurrences
end

p spock("A light wind whips at him as he adjusts several valves on a large battered moisture vaporator which sticks out of the desert floor much like an oil pipe with valves. He is aided by a beatup tread-robot with six claw arms. The little robot appears to be barely functioning and moves with jerky motions.  A bright sparkle in the morning sky catches Luke's eye and he instinctively grabs a pair of electrobinoculars from his utility belt. He stands transfixed for a few moments studying the heavens, then dashed toward his dented, crudely repaired Landspeeder")

#I realized that during the whiteboarding, I never declared that the hash needed a value. I also never included in the method a way to count each occurrence of the words.

#First, you tell it to look at each word individually and ignore the spaces. Then you set the hash name and set the default value of the future keys to 0. It looks over each word, tells the hash there is a new key and increases the value by one. If the key already exists then it will just increase the value again.