print "Here is grandma emulator...i don't know how stop it, but now try say something"
loop do
  phrase = gets.chomp.to_s
  break if phrase.scan('bye').length >= 3
  if phrase.upcase == phrase
    print "In #{rand(1930..1950)}  was better!"
  else
    print 'Did you eat anything today, sonny?'
  end
end
