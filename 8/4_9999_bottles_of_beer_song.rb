def englishNumber number
  if number < 0
    return 'Пожалуйста, введите неотрицательное число.'
  end
  if number == 0
    return 'zero'
  end


  numString = ''

  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']

  left  = number

  write = left/1_000_000_000_000
  left  = left - write*1_000_000_000_000
  if write > 0
    hundreds  = englishNumber write
    numString = numString + hundreds + ' trilliard'

    if left > 0
      numString = numString + ' '
    end
  end

  write = left/1_000_000_000
  left  = left - write*1_000_000_000
  if write > 0
    hundreds  = englishNumber write
    numString = numString + hundreds + ' billion'

    if left > 0
      numString = numString + ' '
    end
  end


  write = left/1_000_000
  left  = left - write*1_000_000
  if write > 0
    hundreds  = englishNumber write
    numString = numString + hundreds + ' million'

    if left > 0
      numString = numString + ' '
    end
  end


  write = left/1000
  left  = left - write*1000
  if write > 0
    hundreds  = englishNumber write
    numString = numString + hundreds + ' thousand'

    if left > 0
      numString = numString + ' '
    end
  end

  write = left/100
  left  = left - write*100

  if write > 0
    hundreds  = englishNumber write
    numString = numString + hundreds + ' hundred'

    if left > 0
      numString = numString + ' '
    end
  end

  write = left/10
  left  = left - write*10

  if write > 0
    if ((write == 1) and (left > 0))
      #  Поскольку мы не можем вывести "tenty-two" вместо "twelve",
      #  нам нужно сделать для них особую обработку.
      numString = numString + teenagers[left-1]
      #  "-1" здесь потому, что teenagers[3] это 'fourteen', а не 'thirteen'.

      #  Поскольку уже мы позаботились о цифре для единиц,
      #  нам не осталось ничего для вывода.
      left = 0
    else
      numString = numString + tensPlace[write-1]
      #  "-1" потому, что tensPlace[3] это 'forty', а не 'thirty'.
    end

    if left > 0
      #  Так, мы не выводим 'sixtyfour'...
      numString = numString + '-'
    end
  end

  write = left  #  Сколько единиц осталось вывести?
  left  = 0     #  Вычтем эти единицы.

  if write > 0
    numString = numString + onesPlace[write-1]
    #  "-1" потому, что onesPlace[3] это 'four', а не 'three'.
  end

  #  А теперь мы просто возвращаем "numString"...
  numString
end

number_of_buttons = 99
while number_of_buttons>0
  puts "#{englishNumber(number_of_buttons) } bottles of beer on the wall"
  puts "#{englishNumber(number_of_buttons) } bottles of beer!"
  puts 'Take one down, pass it around'
  puts "#{englishNumber(number_of_buttons -= 1) } bottles of beer on the wall!\n\n"
end
