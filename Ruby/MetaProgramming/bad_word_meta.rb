class String 
  def censor(bad_word)
    self.gsub! "#{bad_word}", "CENSORED"
  end

  def num_of_chairs
    size
  end
end

p "The bunny was in trouble with the king's bunny".censor("bunny")
p ""