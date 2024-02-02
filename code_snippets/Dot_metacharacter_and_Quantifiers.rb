## Dot metacharacter

'tac tin c.t abc;tuv acute'.gsub(/c.t/, 'X')

'breadth markedly reported overrides'.gsub(/r..d/) { _1.upcase }

"42\t35".sub(/2.3/, '8')

"a\nb".match?(/a.b/)

## split method

'apple-85-mango-70'.split(/-/)

'bus:3:car:-:van'.split(/:.:/)

'apple-85-mango-70'.split(/-/, 2)

## Greedy quantifiers

'far feat flare fear'.gsub(/e?ar/, 'X')

'par spare part party'.gsub(/\bpart?\b/, 'X')

words = %w[red read ready re;d road redo reed rod]

words.grep(/\bre.?d\b/)

'par part parrot parent'.gsub(/par(ro)?t/, 'X')

'par part parrot parent'.gsub(/par(en|ro)?t/, 'X')

'tr tear tare steer sitaara'.gsub(/ta*r/, 'X')

'tr tear tare steer sitaara'.gsub(/t(e|a)*r/, 'X')

'3111111111125111142'.gsub(/1*2/, 'X')

'3111111111125111142'.split(/1*/)

'3111111111125111142'.split(/1*/, -1)

'3111111111125111142'.partition(/1*2/)

'3111111111125111142'.rpartition(/1*2/)

'tr tear tare steer sitaara'.gsub(/ta+r/, 'X')

'tr tear tare steer sitaara'.gsub(/t(e|a)+r/, 'X')

'3111111111125111142'.gsub(/1+2/, 'X')

'3111111111125111142'.split(/1+/)

repeats = %w[abc ac adc abbc xabbbcz bbb bc abbbbbc]

repeats.grep(/ab{1,4}c/)

repeats.grep(/ab{3,}c/)

repeats.grep(/ab{,2}c/)

repeats.grep(/ab{3}c/)

'a{5} = 10'.sub(/a\{5}/, 'a{6}')

'report_{a,b}.txt'.sub(/_{a,b}/, '-{c,d}')

'# heading ### sub-heading'.gsub(/\#{2,}/, '%')

## Conditional AND

'Error: not a valid input'.match?(/Error.*valid/)

'Error: key not found'.match?(/Error.*valid/)

seq1, seq2 = ['cat and dog', 'dog and cat']

seq1.match?(/cat.*dog|dog.*cat/)

seq2.match?(/cat.*dog|dog.*cat/)

patterns = [/cat/, /dog/]

patterns.all? { seq1.match?(_1) }

patterns.all? { seq2.match?(_1) }

## What does greedy mean?

'foot'.sub(/f.?o/, 'X')

puts 'blah \< fig < apple \< blah < cat'.gsub(/\\?</, '\<')

'hand handy handful'.gsub(/hand(y|ful)?/, 'X')

sentence = 'that is quite a fabricated tale'

sentence.sub(/t.*a/, 'X')

'star'.sub(/t.*a/, 'X')

sentence.sub(/t.*a.*q.*f/, 'X')

sentence.sub(/t.*a.*u/, 'X')

## Non-greedy quantifiers

'foot'.sub(/f.??o/, 'X')

'frost'.sub(/f.??o/, 'X')

'123456789'.sub(/.{2,5}?/, 'X')

'green:3.14:teal::brown:oh!:blue'.split(/:.*:/)

'green:3.14:teal::brown:oh!:blue'.split(/:.*?:/)

## Possessive quantifiers

ip = 'fig:mango:pineapple:guava:apples:orange'

ip.gsub(/:.*+/, 'X')

ip.match?(/:.*+apple/)

numbers = '42 314 001 12 00984'

numbers.scan(/0*\d{3,}/)

numbers.scan(/0*+\d{3,}/)

numbers.scan(/0*[1-9]\d{2,}/)

## Atomic grouping

numbers = '42 314 001 12 00984'

numbers.scan(/(?>0*)\d{3,}/)

ip = 'fig::mango::pineapple::guava::apples::orange'

ip.match(/::.*?::apple/)[0]

ip.match(/(?>::.*?::)apple/)[0]

