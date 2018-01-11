## == is used for equality in conditional statements like if, unless, etc. === is used for determining equality in case statements.

def palindrome? word
 word.downcase == word.reverse.downcase
end

palindrome?('baseball')
palindrome?('Tacocat')
palindrome?('DrawOCoward')