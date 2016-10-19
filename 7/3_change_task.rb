lineWidth = 50
arr = [ ['Глава 1:', 'Числа', 'page 1'],
        ['Глава 2:', 'Буквы', 'page 72'],
        ['Глава 3:', 'Переменные', 'page 118'] ]
arr.each do |element|
  puts element.first.ljust(lineWidth/3)  +
    element[1].ljust(lineWidth/3) +
    element.last.rjust(lineWidth/3)
end
