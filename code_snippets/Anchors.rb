## String anchors

'cater'.match?(/\Acat/)

'concatenation'.match?(/\Acat/)

"hi hello\ntop spot".match?(/\Ahi/)

"hi hello\ntop spot".match?(/\Atop/)

'spare'.match?(/are\z/)

'nearest'.match?(/are\z/)

words = %w[surrender unicorn newer door empty eel pest]

words.grep(/er\z/)

words.grep(/t\z/)

"spare\ndare".sub(/are\z/, 'X')

"spare\ndare".sub(/are\Z/, 'X')

"spare\ndare\n".sub(/are\z/, 'X')

"spare\ndare\n".sub(/are\Z/, 'X')

'cat'.match?(/\Acat\z/)

'cater'.match?(/\Acat\z/)

'concatenation'.match?(/\Acat\z/)

'live'.sub(/\A/, 're')

'send'.sub(/\A/, 're')

'cat'.sub(/\z/, 'er')

'hack'.sub(/\z/, 'er')

## Line anchors

pets = 'cat and dog'

pets.match?(/^cat/)

pets.match?(/^dog/)

pets.match?(/dog$/)

pets.match?(/^dog$/)

"hi hello\ntop spot".match?(/^top/)

"spare\npar\nera\ndare".match?(/er$/)

"spare\npar\ndare".each_line.grep(/are$/)

"spare\npar\ndare".match?(/^par$/)

str = "catapults\nconcatenate\ncat"

puts str.gsub(/^/, '1: ')

puts str.gsub(/^/).with_index(1) { "#{_2}: " }

puts str.gsub(/$/, '.')

puts "1\n2\n".gsub(/^/, 'fig ')

puts "1\n\n".gsub(/^/, 'fig ')

puts "1\n2\n".gsub(/$/, ' banana')

puts "1\n\n".gsub(/$/, ' banana')

## Word anchors

words = 'par spar apparent spare part'

words.gsub(/par/, 'X')

words.gsub(/\bpar/, 'X')

words.gsub(/par\b/, 'X')

words.gsub(/\bpar\b/, 'X')

words = 'par spar apparent spare part'

puts words.gsub(/\b/, '"').tr(' ', ',')

'-----hello-----'.gsub(/\b/, ' ')

'output=num1+35*42/num2'.gsub(/\b/, ' ')

'output=num1+35*42/num2'.gsub(/\b/, ' ').strip

## Opposite Word anchors

words = 'par spar apparent spare part'

words.gsub(/\Bpar/, 'X')

words.gsub(/\Bpar\b/, 'X')

words.gsub(/par\B/, 'X')

words.gsub(/\Bpar\B/, 'X')

'copper'.gsub(/\b/, ':')

'copper'.gsub(/\B/, ':')

'-----hello-----'.gsub(/\b/, ' ')

'-----hello-----'.gsub(/\B/, ' ')

