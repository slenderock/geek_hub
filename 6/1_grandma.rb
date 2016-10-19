print "Here is grandma emulator...if you wanna stop this dialog, say 'bye-bye' and simply go, but now say something"
loop do
  phrase = gets.chomp
  break if phrase == 'bye-bye'
  if phrase.upcase == phrase
    print "In #{rand(1930..1950)}  was better!"
  else
    print 'Did you eat anything today, sonny?'
  end
end
