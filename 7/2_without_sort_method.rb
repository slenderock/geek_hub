def custom_sort array
  return [] if array.length == 0
  pivot = array.shift
  less, more = array.partition {|e| e < pivot }
  qsort(less) + [pivot] + qsort(more)
end

arr =[]

puts 'Enter some phrases'
loop do
  phrase = gets.chomp.to_s
  break if phrase.empty?
  arr << phrase
end

puts custom_sort(arr)
