arr =[]
puts 'Enter some phrases'
loop do
  phrase = gets.chomp.to_s
  break if phrase.empty
  arr << phrase
end

arr.each{|value|}
