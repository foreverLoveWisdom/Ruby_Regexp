## Conditional expressions

items = ['1,2,3,4', 'a,b,c,d', '#apple 123']

items.filter { _1.match?(/\d/) && _1.include?('#') }

items.filter_map { |s| s.sub(/,.+,/, ' ') if s[0] != '#' }

## Negative lookarounds

'hey cats! cat42 cat_5 catcat'.gsub(/cat(?!\d)/, 'dog')

'cat _cat 42catcat'.gsub(/(?<!_)cat/, 'dog')

'cats _cater 42cat_cats'.gsub(/(?<!_)cat./, 'dog')

':cart apple --rest ;tea'.gsub(/(?<!:|--)\b\w+/, 'X')

'tie. ink east;'.scan(/(?<![[:punct:]])\b\w+\b(?![[:punct:]])/)

'output=num1+35*42/num2'.gsub(/(?<!\A)\b(?!\z)/, ' ')

'spare'.gsub(/(?<![pr])./, '*')

'spare'.gsub(/.(?<![pr].)/, '*')

'par spare part party'.gsub(/par(?!.*s)/, '[\0]')

'par spare part party'.gsub(/(?!.*s)par/, '[\0]')

'output=num1+35*42/num2'.gsub(/(?!\z)\b(?<!\A)/, ' ')

## Positive lookarounds

'42 apple-5, fig3; x-83, y-20: f12'.scan(/\d+(?=,)/)

'42 apple-5, fig3; x-83, y-20: f12'.scan(/(?<=-)\d+(?=[;:])/)

'par spare part party'.gsub(/par(?=.*\bpart\b)/, '[\0]')

'1,two,3,four,5'.scan(/(?<=,)[^,]+(?=,)/)

',1,,,two,3,,'.gsub(/(?<=\A|,)(?=,|\z)/, 'nil')

',cat,tiger'.gsub(/[^,]*/, '{\0}')

',cat,tiger'.gsub(/(?<=\A|,)[^,]*/, '{\0}')

## Capture groups inside positive lookarounds

puts 'a b c d e'.gsub(/(\S+\s+)(?=(\S+)\s)/, "\\1\\2\n")

'pore42 car3 pare7 care5'.scan(/(?<=(po|ca)re)\d+/)

'pore42 car3 pare7 care5'.scan(/(?<=(?:po|ca)re)\d+/)

## Conditional AND with lookarounds

words = %w[sequoia subtle questionable exhibit equation]

words.grep(/(?=.*b)(?=.*e).*t/)

words.grep(/(?=.*a)(?=.*e)(?=.*i)(?=.*o).*u/)

words.grep(/(?=.*a[bt])(?=.*q)(?!.*n\z)/)

## Set start of matching portion with \K

'sea eat car rat eel tea'.gsub(/\b\w\K\w*\W*/, '')

s = 'cat scatter cater scat concatenate catastrophic catapult duplicate'

s.sub(/(cat.*?){2}\Kcat/, '[\0]')

s.gsub(/(cat.*?){2}\Kcat/, '[\0]')

row = '421,cat,2425,42,5,cat,6,6,42,61,6,6,6,6,4'

nil while row.gsub!(/(?<=\A|,)([^,]++).*\K,\1(?=,|\z)/, '')

row

',cat,tiger'.gsub(/(?<=\A|,)[^,]*+/, '{\0}')

',cat,tiger'.gsub(/(?:\A|,)\K[^,]*+/, '{\0}')

'abcd 123456'.gsub(/(?<=\w)/, ':')

'abcd 123456'.gsub(/\w/, '\0:')

'abcd 123456'.gsub(/\w\K/, ':')

## Variable length lookbehind

s = 'pore42 tar3 dare7 care5'

s.scan(/(?<=(?:po|da)re)\d+/)

s.scan(/(?<=\b[a-z]{4})\d+/)

s.scan(/(?<!tar|dare)\d+/)

s.scan(/(?<=(?:o|ca)re)\d+/)

s.scan(/(?<=\b[a-z]+)\d+/)

s = 'pore42 tar3 dare7 care5'

s.gsub(/(?:tar|dare)(\d+)/).map { $1 }

s.gsub(/(tar|dare)\d+/, '\1')

s.gsub(/\b[pd][a-z]*(\d+)/).map { $1 }

s.gsub(/(\b[pd][a-z]*)\d+/, '\1')

## Negated groups and the absence operator

'fox,cat,dog,parrot'.match?(/\A((?!cat).)*dog/)

'fox,cat,dog,parrot'.match?(/\A((?!parrot).)*dog/)

words = 'apple banana 12_bananas cherry fig mango cake42'

words.scan(/\b[a-z](?:(?!pp|rr)[a-z])*\b/)

'fox,cat,dog,parrot'[/\A((?!cat).)*/]

'fox,cat,dog,parrot'[/\A((?!parrot).)*/]

'fox,cat,dog,parrot'[/\A(?:(?!(.)\1).)*/]

'fox,cat,dog,parrot'.match?(/at(?~do)par/)

'fox,cat,dog,parrot'.match?(/at(?~go)par/)

'fox,cat,dog,parrot'[/at(?~go)par/]

## \G anchor

record = '123-456-7890 Joe (30-40) years'

record.gsub(/\S/, '*')

record.gsub(/\A\S/, '*')

record.gsub(/\G\S/, '*')

record.scan(/\G\S/)

record = '123-456-7890 Joe (30-40) years'

record.scan(/\G\d+-?/)

record.gsub(/\G(\d+)(-?)/, '[\1]\2')

'cat_12 bat_100 kite_42'.scan(/\G\w(?=\w)/)

'cat_12 bat_100 kite_42'.gsub(/\G\w(?=\w)/, '\0:')

'par tar-den hen-food mood'.gsub(/\G[a-z ]/, '(\0)')

marks = 'Joe 75 88 Mina 89 85 84 John 90'

marks.scan(/(?:Mina|\G) \K\d+/)

marks.scan(/(?:Joe|\G) \K\d+/)

marks.scan(/(?:John|\G) \K\d+/)

passwords = 'Rohit:hunter2 Ram:123456 Ranjit:abcdef'

passwords.gsub(/(?:Ram:\K|\G)\S/, '*')

passwords.gsub(/(?:Ram:\K|\G(?!\A))\S/, '*')

passwords.gsub(/(?:Rohit:\K|\G(?!\A))\S/, '*')

