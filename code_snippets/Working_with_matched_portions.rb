## match method

'too soon a song snatch'.match(/so+n/)

'too soon a song snatch'.match('a.*g')

'too soon a song snatch'.match(/so+n/, 7)

'too soon a song snatch'.match(/on.*g/)[0]

purchase = 'coffee:100g tea:250g sugar:75g chocolate:50g'

m = purchase.match(/:(.*?)g.*?:(.*?)g.*?chocolate:(.*?)g/)

m.to_a

m.captures

m[1]

m = 'awesome'.match(/w(.*)me/)

m.offset(0)

m.offset(1)

m.begin(0)

m.end(1)

m = 'THIS is goodbye then'.match(/hi.*bye/i)

m.regexp

m.string

## match method with block

'THIS is goodbye then'.match(/T(.*S).*(g.*?e)/) { |m| puts m[2], m[1] }

'apple mango'.match(/xyz/) { puts 2 * 3 }

## Using regexp as a string index

'too soon a song snatch'[/so+n/]

'too soon a song snatch'[/(t.*?s).*(s.*g)/, 2]

'too soon a song snatch'[7..][/so+n/]

word = 'elephant'

word[/e.*h/] = 'w'

word

## scan method

'too soon a song snatch'.scan(/so*n/)

'too soon a song snatch'.scan(/so+n/)

s = 'PAR spar apparent SpArE part pare'

s.scan(/\bs?pare?\b/i)

s = 'green:3.14:teal::brown:oh!:blue'

s.scan(/:.*:/)

s.scan(/:.*?:/)

s.scan(/:.*+:/)

purchase = 'coffee:100g tea:250g sugar:75g chocolate:50g'

purchase.scan(/:.*?g/)

purchase.scan(/:(.*?)g/)

'2023/04/25,1986/Mar/02,77/12/31'.scan(%r{(.*?)/(.*?)/(.*?),})

'too soon a song snatch'.scan(/so+n/) { puts _1.upcase }

'xx:yyy x: x:yy :y'.scan(/(x*):(y*)/) { puts _1.size + _2.size }

## split with capture groups

'31111111111251111426'.split(/1*4?2/)

'31111111111251111426'.split(/(1*4?2)/)

'31111111111251111426'.split(/(1*)4?2/)

'3.14aabccc42'.split(/(a+)b+(c+)/)

'31111111111251111426'.split(/(1*)(4)?2/)

'3.14aabccc42abc88'.split(/(a+b+c+)/, 2)

## regexp global variables

sentence = 'that is quite a fabricated tale'

sentence =~ /q.*b/

$~

$~[0]

$`

$&

$'

'too soon a song snatch'.scan(/so+n/) { puts $&.upcase }

'too soon a song snatch'.gsub(/so+n/) { puts $~.begin(0) }

$~

$`

sentence = 'that is quite a fabricated tale'

sentence.scan(/t.*?a/).map { $~.begin(0) }

sentence.gsub(/t.*?a/).map { $~.begin(0) }

sentence = 'that is quite a fabricated tale'

sentence =~ /a.*(q.*(f.*b).*c)(.*a)/

$&

$1

$2

$+

$4

$~[-2]

$~.values_at(1, 3)

## Using hashes

h = { '1' => 'one', '2' => 'two', '4' => 'four' }

'9234012'.gsub(/1|2|4/, h)

h.default = 'X'

'9234012'.gsub(/./, h)

swap = { 'cat' => 'tiger', 'tiger' => 'cat' }

'cat tiger dog tiger cat'.gsub(/cat|tiger/, swap)

h = { 'hand' => 1, 'handy' => 2, 'handful' => 3, 'a^b' => 4 }

pat = Regexp.union(h.keys.sort_by { |w| -w.length })

pat

'handful hand pin handy (a^b)'.gsub(pat, h)

## Substitution in conditional expression

num = '4'

puts "#{num} apples" if num.sub!(/5/) { $&.to_i ** 2 }

puts "#{num} apples" if num.sub!(/4/) { $&.to_i ** 2 }

word, cnt = ['coffining', 0]

cnt += 1 while word.sub!(/fin/, '')

[word, cnt]

