# Exercises

>![info](../images/info.svg) Try to solve the exercises in every chapter using only the features discussed until that chapter. Some of the exercises will be easier to solve with techniques presented in the later chapters, but the aim of these exercises is to explore the features presented so far.

>![info](../images/info.svg) For solutions, see [Exercise_solutions.md](https://github.com/learnbyexample/Ruby_Regexp/blob/master/exercises/Exercise_solutions.md).

<br>

# Regexp introduction

**1)** Check whether the given strings contain `0xB0`. Display a boolean result as shown below.

```ruby
>> line1 = 'start address: 0xA0, func1 address: 0xC0'
>> line2 = 'end address: 0xFF, func2 address: 0xB0'

>> line1.match?()       ##### add your solution here
=> false
>> line2.match?()       ##### add your solution here
=> true
```

**2)** Check if the given input strings contain `two` irrespective of case.

```ruby
>> s1 = 'Their artwork is exceptional'
>> s2 = 'one plus tw0 is not three'
>> s3 = 'TRUSTWORTHY'

>> pat1 = //        ##### add your solution here

>> pat1.match?(s1)
=> true
>> pat1.match?(s2)
=> false
>> pat1.match?(s3)
=> true
```

**3)** Replace all occurrences of `5` with `five` for the given string.

```ruby
>> ip = 'They ate 5 apples and 5 oranges'

>> ip.gsub(//, 'five')      ##### add your solution here
=> "They ate five apples and five oranges"
```

**4)** Replace only the first occurrence of `5` with `five` for the given string.

```ruby
>> ip = 'They ate 5 apples and 5 oranges'

>> ip.sub(//, 'five')       ##### add your solution here
=> "They ate five apples and 5 oranges"
```

**5)** For the given array, filter all elements that do *not* contain `e`.

```ruby
>> items = %w[goal new user sit eat dinner]

>> items.grep_v(//)     ##### add your solution here
=> ["goal", "sit"]
```

**6)** Replace all occurrences of `note` irrespective of case with `X`.

```ruby
>> ip = 'This note should not be NoTeD'

>> ip.gsub(//, 'X')     ##### add your solution here
=> "This X should not be XD"
```

**7)** For the given input string, print all lines NOT containing the string `2`.

```ruby
'> purchases = %q{items qty
'> apple 24
'> mango 50
'> guava 42
'> onion 31
>> water 10}

>> num = //     ##### add your solution here

>> puts purchases.each_line.grep_v(num)
items qty
mango 50
onion 31
water 10
```

**8)** For the given array, filter all elements that contain either `a` or `w`.

```ruby
>> items = %w[goal new user sit eat dinner]

>> items.filter { }     ##### add your solution here
=> ["goal", "new", "eat"]
```

**9)** For the given array, filter all elements that contain both `e` and `n`.

```ruby
>> items = %w[goal new user sit eat dinner]

>> items.filter { }     ##### add your solution here
=> ["new", "dinner"]
```

**10)** For the given string, replace `0xA0` with `0x7F` and `0xC0` with `0x1F`.

```ruby
>> ip = 'start address: 0xA0, func1 address: 0xC0'

##### add your solution here
=> "start address: 0x7F, func1 address: 0x1F"
```

**11)** Find the starting index of the first occurrence of `is` for the given input string.

```ruby
>> ip = 'match this after the history lesson'

##### add your solution here
=> 8
```

<br>

# Anchors

**1)** Check if the given strings start with `be`.

```ruby
>> line1 = 'be nice'
>> line2 = '"best!"'
>> line3 = 'better?'
>> line4 = 'oh no\nbear spotted'

>> pat =        ##### add your solution here

>> pat.match?(line1)
=> true
>> pat.match?(line2)
=> false
>> pat.match?(line3)
=> true
>> pat.match?(line4)
=> false
```

**2)** For the given input string, change only the whole word `red` to `brown`.

```ruby
>> words = 'bred red spread credible red.'

>> words.gsub()     ##### add your solution here
=> "bred brown spread credible brown."
```

**3)** For the given input array, filter elements that contain `42` surrounded by word characters.

```ruby
>> items = ['hi42bye', 'nice1423', 'bad42', 'cool_42a', '42fake', '_42_']

>> items.grep()     ##### add your solution here
=> ["hi42bye", "nice1423", "cool_42a", "_42_"]
```

**4)** For the given input array, filter elements that start with `den` or end with `ly`.

```ruby
>> items = ['lovely', "1\ndentist", '2 lonely', 'eden', "fly\n", 'dent']

>> items.filter { }     ##### add your solution here
=> ["lovely", "2 lonely", "dent"]
```

**5)** For the given input string, change whole word `mall` to `1234` only if it is at the start of a line.

```ruby
'> para = %q{(mall) call ball pall
'> ball fall wall tall
'> mall call ball pall
'> wall mall ball fall
'> mallet wallet malls
>> mall:call:ball:pall}

>> puts para.gsub()     ##### add your solution here
(mall) call ball pall
ball fall wall tall
1234 call ball pall
wall mall ball fall
mallet wallet malls
1234:call:ball:pall
```

**6)** For the given array, filter elements having a line starting with `den` or ending with `ly`.

```ruby
>> items = ['lovely', "1\ndentist", '2 lonely', 'eden', "fly\nfar", 'dent']

>> items.filter { }     ##### add your solution here
=> ["lovely", "1\ndentist", "2 lonely", "fly\nfar", "dent"]
```

**7)** For the given input array, filter all whole elements `12\nthree` irrespective of case.

```ruby
>> items = ["12\nthree\n", "12\nThree", "12\nthree\n4", "12\nthree"]

>> items.grep()     ##### add your solution here
=> ["12\nThree", "12\nthree"]
```

**8)** For the given input array, replace `hand` with `X` for all elements that start with `hand` followed by at least one word character.

```ruby
>> items = %w[handed hand handy unhanded handle hand-2]

>> items.map { }        ##### add your solution here
=> ["Xed", "hand", "Xy", "unhanded", "Xle", "hand-2"]
```

**9)** For the given input array, filter all elements starting with `h`. Additionally, replace `e` with `X` for these filtered elements.

```ruby
>> items = %w[handed hand handy unhanded handle hand-2]

>> items.filter_map { }     ##### add your solution here
=> ["handXd", "hand", "handy", "handlX", "hand-2"]
```

<br>

# Alternation and Grouping

**1)** For the given input array, filter all elements that start with `den` or end with `ly`.

```ruby
>> items = ['lovely', "1\ndentist", '2 lonely', 'eden', "fly\n", 'dent']

>> items.grep()     ##### add your solution here
=> ["lovely", "2 lonely", "dent"]
```

**2)** For the given array, filter elements having a line starting with `den` or ending with `ly`.

```ruby
>> items = ['lovely', "1\ndentist", '2 lonely', 'eden', "fly\nfar", 'dent']

>> items.grep()     ##### add your solution here
=> ["lovely", "1\ndentist", "2 lonely", "fly\nfar", "dent"]
```

**3)** For the given strings, replace all occurrences of `removed` or `reed` or `received` or `refused` with `X`.

```ruby
>> s1 = 'creed refuse removed read'
>> s2 = 'refused reed redo received'

>> pat =        ##### add your solution here

>> s1.gsub(pat, 'X')
=> "cX refuse X read"
>> s2.gsub(pat, 'X')
=> "X X redo X"
```

**4)** For the given strings, replace all matches from the array `words` with `A`.

```ruby
>> s1 = 'plate full of slate'
>> s2 = "slated for later, don't be late"
>> words = %w[late later slated]

>> pat =        ##### add your solution here

>> s1.gsub(pat, 'A')
=> "pA full of sA"
>> s2.gsub(pat, 'A')
=> "A for A, don't be A"
```

**5)** Filter all whole elements from the input array `items` that exactly matches any of the elements present in the array `words`.

```ruby
>> items = ['slate', 'later', 'plate', 'late', 'slates', 'slated ']
>> words = %w[late later slated]

>> pat =        ##### add your solution here

>> items.grep(pat)
=> ["later", "late"]
```

<br>

# Escaping metacharacters

**1)** Transform the given input strings to the expected output using the same logic on both strings.

```ruby
>> str1 = '(9-2)*5+qty/3-(9-2)*7'
>> str2 = '(qty+4)/2-(9-2)*5+pq/4'

>> str1.gsub()      ##### add your solution here
=> "35+qty/3-(9-2)*7"
>> str2.gsub()      ##### add your solution here
=> "(qty+4)/2-35+pq/4"
```

**2)** Replace `(4)\|` with `2` only at the start or end of the given input strings.

```ruby
>> s1 = '2.3/(4)\|6 fig 5.3-(4)\|'
>> s2 = '(4)\|42 - (4)\|3'
>> s3 = "two - (4)\\|\n"

>> pat =        ##### add your solution here

>> s1.gsub(pat, '2')
=> "2.3/(4)\\|6 fig 5.3-2"
>> s2.gsub(pat, '2')
=> "242 - (4)\\|3"
>> s3.gsub(pat, '2')
=> "two - (4)\\|\n"
```

**3)** Replace any matching item from the given array with `X` for the given input strings. Match the elements from `items` literally. Assume no two elements of `items` will result in any matching conflict.

```ruby
>> items = ['a.b', '3+n', 'x\y\z', 'qty||price', '{n}']

>> pat =        ##### add your solution here

>> '0a.bcd'.gsub(pat, 'X')
=> "0Xcd"
>> 'E{n}AMPLE'.gsub(pat, 'X')
=> "EXAMPLE"
>> '43+n2 ax\y\ze'.gsub(pat, 'X')
=> "4X2 aXe"
```

**4)** Replace the backspace character `\b` with a single space character for the given input string.

```ruby
>> ip = "123\b456"
>> puts ip
12456

>> ip.gsub()        ##### add your solution here
=> "123 456"
```

**5)** Replace all occurrences of `\o` with `o`.

```ruby
>> ip = 'there are c\omm\on aspects am\ong the alternati\ons'

>> ip.gsub()        ##### add your solution here
=> "there are common aspects among the alternations"
```

**6)** Replace any matching item from the array `eqns` with `X` for the given string `ip`. Match the items from `eqns` literally.

```ruby
>> ip = '3-(a^b)+2*(a^b)-(a/b)+3'
>> eqns = %w[(a^b) (a/b) (a^b)+2]

>> pat =        ##### add your solution here

>> ip.gsub(pat, 'X')
=> "3-X*X-X+3"
```

<br>

# Dot metacharacter and Quantifiers

>![info](../images/info.svg) Since the `.` metacharacter doesn't match newline characters by default, assume that the input strings in the following exercises will not contain newline characters.

**1)** Replace `42//5` or `42/5` with `8` for the given input.

```ruby
>> ip = 'a+42//5-c pressure*3+42/5-14256'

>> ip.gsub()        ##### add your solution here
=> "a+8-c pressure*3+8-14256"
```

**2)** For the array `items`, filter all elements starting with `hand` and ending immediately with at most one more character or `le`.

```ruby
>> items = %w[handed hand handled handy unhand hands handle]

>> items.grep()     ##### add your solution here
=> ["hand", "handy", "hands", "handle"]
```

**3)** Use the `split` method to get the output as shown for the given input strings.

```ruby
>> eqn1 = 'a+42//5-c'
>> eqn2 = 'pressure*3+42/5-14256'
>> eqn3 = 'r*42-5/3+42///5-42/53+a'

>> pat =        ##### add your solution here

>> eqn1.split(pat)
=> ["a+", "-c"]
>> eqn2.split(pat)
=> ["pressure*3+", "-14256"]
>> eqn3.split(pat)
=> ["r*42-5/3+42///5-", "3+a"]
```

**4)** For the given input strings, remove everything from the first occurrence of `i` till the end of the string.

```ruby
>> s1 = 'remove the special meaning of such constructs'
>> s2 = 'characters while constructing'
>> s3 = 'input output'

>> pat =        ##### add your solution here

>> s1.sub(pat, '')
=> "remove the spec"
>> s2.sub(pat, '')
=> "characters wh"
>> s3.sub(pat, '')
=> ""
```

**5)** For the given strings, construct a regexp to get the output as shown below.

```ruby
>> str1 = 'a+b(addition)'
>> str2 = 'a/b(division) + c%d(#modulo)'
>> str3 = 'Hi there(greeting). Nice day(a(b)'

>> remove_parentheses =     ##### add your solution here

>> str1.gsub(remove_parentheses, '')
=> "a+b"
>> str2.gsub(remove_parentheses, '')
=> "a/b + c%d"
>> str3.gsub(remove_parentheses, '')
=> "Hi there. Nice day"
```

**6)** Correct the given regexp to get the expected output.

```ruby
>> words = 'plink incoming tint winter in caution sentient'

# wrong output
>> change = /int|in|ion|ing|inco|inter|ink/
>> words.gsub(change, 'X')
=> "plXk XcomXg tX wXer X cautX sentient"

# expected output
>> change =     ##### add your solution here
>> words.gsub(change, 'X')
=> "plX XmX tX wX X cautX sentient"
```

**7)** For the given greedy quantifiers, what would be the equivalent form using the `{m,n}` representation?

* `?` is same as
* `*` is same as
* `+` is same as

**8)** `(a*|b*)` is same as `(a|b)*` — true or false?

**9)** For the given input strings, remove everything from the first occurrence of `test` (irrespective of case) till the end of the string, provided `test` isn't at the end of the string.

```ruby
>> s1 = 'this is a Test'
>> s2 = 'always test your RE for corner cases'
>> s3 = 'a TEST of skill tests?'

>> pat =        ##### add your solution here

>> s1.sub(pat, '')
=> "this is a Test"
>> s2.sub(pat, '')
=> "always "
>> s3.sub(pat, '')
=> "a "
```

**10)** For the input array `words`, filter all elements starting with `s` and containing `e` and `t` in any order.

```ruby
>> words = ['sequoia', 'subtle', 'exhibit', 'a set', 'sets', 'tests', 'site']

>> words.grep()     ##### add your solution here
=> ["subtle", "sets", "site"]
```

**11)** For the input array `words`, remove all elements having less than `6` characters.

```ruby
>> words = %w[sequoia subtle exhibit asset sets tests site]

>> words.grep()     ##### add your solution here
=> ["sequoia", "subtle", "exhibit"]
```

**12)** For the input array `words`, filter all elements starting with `s` or `t` and having a maximum of `6` characters.

```ruby
>> words = ['sequoia', 'subtle', 'exhibit', 'asset', 'sets', 't set', 'site']

>> words.grep()     ##### add your solution here
=> ["subtle", "sets", "t set", "site"]
```

**13)** Can you reason out why this code results in the output shown? The aim was to remove all `<characters>` patterns but not the `<>` ones. The expected result was `'a 1<> b 2<> c'`.

```ruby
>> ip = 'a<apple> 1<> b<bye> 2<> c<cat>'

>> ip.gsub(/<.+?>/, '')
=> "a 1 2"
```

**14)** Use the `split` method to get the output as shown below for the given input strings.

```ruby
>> s1 = 'go there  ::   this :: that'
>> s2 = 'a::b :: c::d e::f :: 4::5'
>> s3 = '42:: hi::bye::see :: carefully'

>> pat =        ##### add your solution here

>> s1.split(pat, 2)
=> ["go there", "this :: that"]
>> s2.split(pat, 2)
=> ["a::b", "c::d e::f :: 4::5"]
>> s3.split(pat, 2)
=> ["42:: hi::bye::see", "carefully"]
```

**15)** For the given input strings, match if the string starts with optional space characters followed by at least two `#` characters.

```ruby
>> s1 = '   ## header2'
>> s2 = '#### header4'
>> s3 = '# comment'
>> s4 = 'normal string'
>> s5 = 'nope ## not this'

>> pat =        ##### add your solution here

>> s1.match?(pat)
=> true
>> s2.match?(pat)
=> true
>> s3.match?(pat)
=> false
>> s4.match?(pat)
=> false
>> s5.match?(pat)
=> false
```

**16)** Modify the given regular expression such that it gives the expected results.

```ruby
>> s1 = 'appleabcabcabcapricot'
>> s2 = 'bananabcabcabcdelicious'

# wrong output
>> pat = /(abc)+a/
>> pat.match?(s1)
=> true
>> pat.match?(s2)
=> true

# expected output
# 'abc' shouldn't be considered when trying to match 'a' at the end
>> pat =        ##### add your solution here
>> pat.match?(s1)
=> true
>> pat.match?(s2)
=> false
```

<br>

# Working with matched portions

**1)** For the given strings, extract the matching portion from the first `is` to the last `t`.

```ruby
>> str1 = 'This the biggest fruit you have seen?'
>> str2 = 'Your mission is to read and practice consistently'

>> pat =        ##### add your solution here

##### add your solution here for str1
=> "is the biggest fruit"
##### add your solution here for str2
=> "ission is to read and practice consistent"
```

**2)** Find the starting index of the first occurrence of `is` or `the` or `was` or `to` for the given input strings.

```ruby
>> s1 = 'match after the last newline character'
>> s2 = 'and then you want to test'
>> s3 = 'this is good bye then'
>> s4 = 'who was there to see?'

>> pat =        ##### add your solution here

##### add your solution here for s1
=> 12
##### add your solution here for s2
=> 4
##### add your solution here for s3
=> 2
##### add your solution here for s4
=> 4
```

**3)** Find the starting index of the last occurrence of `is` or `the` or `was` or `to` for the given input strings.

```ruby
>> s1 = 'match after the last newline character'
>> s2 = 'and then you want to test'
>> s3 = 'this is good bye then'
>> s4 = 'who was there to see?'

>> pat =        ##### add your solution here

##### add your solution here for s1
=> 12
##### add your solution here for s2
=> 18
##### add your solution here for s3
=> 17
##### add your solution here for s4
=> 14
```

**4)** Extract everything after the `:` character, which occurs only once in the input.

```ruby
>> ip = 'fruits:apple, mango, guava, blueberry'

##### add your solution here
=> "apple, mango, guava, blueberry"
```

**5)** The given input strings contains some text followed by `-` followed by a number. Replace that number with its `log` value using `Math.log()`.

```ruby
>> s1 = 'first-3.14'
>> s2 = 'next-123'

>> pat =        ##### add your solution here

##### add your solution here for s1
=> "first-1.144222799920162"
##### add your solution here for s2
=> "next-4.812184355372417"
```

**6)** Replace all occurrences of `par` with `spar`, `spare` with `extra` and `park` with `garden` for the given input strings.

```ruby
>> str1 = 'apartment has a park'
>> str2 = 'do you have a spare cable'
>> str3 = 'write a parser'

##### add your solution here for str1
=> "aspartment has a garden"
##### add your solution here for str2
=> "do you have a extra cable"
##### add your solution here for str3
=> "write a sparser"
```

**7)** Extract all words between `(` and `)` from the given input string as an array. Assume that the input will not contain any broken parentheses.

```ruby
>> ip = 'another (way) to reuse (portion) matched (by) capture groups'

# as nested array
##### add your solution here
=> [["way"], ["portion"], ["by"]]

# as array of strings
##### add your solution here
=> ["way", "portion", "by"]
```

**8)** Extract all occurrences of `<` up to the next occurrence of `>`, provided there is at least one character in between `<` and `>`.

```ruby
>> ip = 'a<apple> 1<> b<bye> 2<> c<cat>'

##### add your solution here
=> ["<apple>", "<> b<bye>", "<> c<cat>"]
```

**9)** Use `scan` to get the output as shown below for the given input strings. Note the characters used in the input strings carefully.

```ruby
>> row1 = '-2,5 4,+3 +42,-53 4356246,-357532354 '
>> row2 = '1.32,-3.14 634,5.63 63.3e3,9907809345343.235 '

>> pat =        ##### add your solution here

>> row1.scan(pat)
=> [["-2", "5"], ["4", "+3"], ["+42", "-53"], ["4356246", "-357532354"]]
>> row2.scan(pat)
=> [["1.32", "-3.14"], ["634", "5.63"], ["63.3e3", "9907809345343.235"]]
```

**10)** This is an extension to the previous question.

* For `row1`, find the sum of integers of each array element. For example, sum of `-2` and `5` is `3`.
* For `row2`, find the sum of floating-point numbers of each array element. For example, sum of `1.32` and `-3.14` is `-1.82`.

```ruby
>> row1 = '-2,5 4,+3 +42,-53 4356246,-357532354 '
>> row2 = '1.32,-3.14 634,5.63 63.3e3,9907809345343.235 '

# should be same as the previous question
>> pat =        ##### add your solution here

##### add your solution here for row1
=> [3, 7, -11, -353176108]

##### add your solution here for row2
=> [-1.82, 639.63, 9907809408643.234]
```

**11)** Use the `split` method to get the output as shown below.

```ruby
>> ip = '42:no-output;1000:car-tr:u-ck;SQEX49801'

>> ip.split()       ##### add your solution here
=> ["42", "output", "1000", "tr:u-ck", "SQEX49801"]
```

**12)** Convert the comma separated strings to corresponding `hash` objects as shown below. Note that the input strings have an extra `,` at the end.

```ruby
>> row1 = 'name:rohan,maths:75,phy:89,'
>> row2 = 'name:rose,maths:88,phy:92,'

>> pat =        ##### add your solution here

##### add your solution here for row1
=> {"name"=>"rohan", "maths"=>"75", "phy"=>"89"}
##### add your solution here for row2
=> {"name"=>"rose", "maths"=>"88", "phy"=>"92"}
```

<br>

# Character class

**1)** For the array `items`, filter all elements starting with `hand` and ending immediately with `s` or `y` or `le`.

```ruby
>> items = %w[-handy hand handy unhand hands hand-icy handle]

##### add your solution here
=> ["handy", "hands", "handle"]
```

**2)** Replace all whole words `reed` or `read` or `red` with `X`.

```ruby
>> ip = 'redo red credible :read: rod reed'

##### add your solution here
=> "redo X credible :X: rod X"
```

**3)** For the array `words`, filter all elements containing `e` or `i` followed by `l` or `n`. Note that the order mentioned should be followed.

```ruby
>> words = %w[surrender unicorn newer door empty eel pest]

##### add your solution here
=> ["surrender", "unicorn", "eel"]
```

**4)** For the array `words`, filter all elements containing `e` or `i` and `l` or `n` in any order.

```ruby
>> words = %w[surrender unicorn newer door empty eel pest]

##### add your solution here
=> ["surrender", "unicorn", "newer", "eel"]
```

**5)** Convert the comma separated strings to corresponding `hash` objects as shown below.

```ruby
>> row1 = 'name:rohan,maths:75,phy:89'
>> row2 = 'name:rose,maths:88,phy:92'

>> pat =        ##### add your solution here

##### add your solution here for row1
=> {"name"=>"rohan", "maths"=>"75", "phy"=>"89"}
##### add your solution here for row2
=> {"name"=>"rose", "maths"=>"88", "phy"=>"92"}
```

**6)** Delete from `(` to the next occurrence of `)` unless they contain parentheses characters in between.

```ruby
>> str1 = 'def factorial()'
>> str2 = 'a/b(division) + c%d(#modulo) - (e+(j/k-3)*4)'
>> str3 = 'Hi there(greeting). Nice day(a(b)'

>> remove_parentheses =     ##### add your solution here

>> str1.gsub(remove_parentheses, '')
=> "def factorial"
>> str2.gsub(remove_parentheses, '')
=> "a/b + c%d - (e+*4)"
>> str3.gsub(remove_parentheses, '')
=> "Hi there. Nice day(a"
```

**7)** For the array `words`, filter all elements not starting with `e` or `p` or `u`.

```ruby
>> words = %w[surrender unicorn newer door empty eel (pest)]

##### add your solution here
=> ["surrender", "newer", "door", "(pest)"]
```

**8)** For the array `words`, filter all elements not containing `u` or `w` or `ee` or `-`.

```ruby
>> words = %w[p-t you tea heel owe new reed ear]

##### add your solution here
=> ["tea", "ear"]
```

**9)** The given input strings contain fields separated by `,` and fields can be empty too. Replace the last three fields with `WHTSZ323`.

```ruby
>> row1 = '(2),kite,12,,D,C,,'
>> row2 = 'hi,bye,sun,moon'

>> pat =        ##### add your solution here

##### add your solution here for row1
=> "(2),kite,12,,D,WHTSZ323"
##### add your solution here for row2
=> "hi,WHTSZ323"
```

**10)** Split the given strings based on consecutive sequence of digit or whitespace characters.

```ruby
>> str1 = "lion \t Ink32onion Nice"
>> str2 = "**1\f2\n3star\t7 77\r**"

>> pat =        ##### add your solution here

>> str1.split(pat)
=> ["lion", "Ink", "onion", "Nice"]
>> str2.split(pat)
=> ["**", "star", "**"]
```

**11)** Delete all occurrences of the sequence `<characters>` where `characters` is one or more non `>` characters and cannot be empty.

```ruby
>> ip = 'a<apple> 1<> b<bye> 2<> c<cat>'

##### add your solution here
=> "a 1<> b 2<> c"
```

**12)** `\b[a-z](on|no)[a-z]\b` is same as `\b[a-z][on]{2}[a-z]\b`. True or False? Sample input lines shown below might help to understand the differences, if any.

```ruby
>> puts "known\nmood\nknow\npony\ninns"
known
mood
know
pony
inns
```

**13)** For the given array, filter elements containing any number sequence greater than `624`.

```ruby
>> items = ['h0000432ab', 'car00625', '42_624 0512', '96 foo1234baz 3.14 2']

##### add your solution here
=> ["car00625", "96 foo1234baz 3.14 2"]
```

**14)** Count the maximum depth of nested braces for the given strings. Unbalanced or wrongly ordered braces should return `-1`. Note that this will require a mix of regular expressions and Ruby code.

```ruby
?> def max_nested_braces(ip)
##### add your solution here
>> end

>> max_nested_braces('a*b')
=> 0
>> max_nested_braces('}a+b{')
=> -1
>> max_nested_braces('a*b+{}')
=> 1
>> max_nested_braces('{{a+2}*{b+c}+e}')
=> 2
>> max_nested_braces('{{a+2}*{b+{c*d}}+e}')
=> 3
>> max_nested_braces("{{a+2}*{\n{b+{c*d}}+e*d}}")
=> 4
>> max_nested_braces('a*{b+c*{e*3.14}}}')
=> -1
```

**15)** By default, the `split` method will split on whitespace and remove empty strings from the result. Which regexp based method would you use to replicate this functionality?

```ruby
>> ip = " \t\r  so  pole\t\t\t\n\nlit in to \r\n\v\f  "

>> ip.split
=> ["so", "pole", "lit", "in", "to"]

##### add your solution here
=> ["so", "pole", "lit", "in", "to"]
```

**16)** Convert the given input string to two different arrays as shown below. You can optimize the regexp based on characters present in the input string.

```ruby
>> ip = "price_42 roast^\t\n^-ice==cat\neast"

##### add your solution here
=> ["price_42", "roast", "ice", "cat", "east"]

##### add your solution here
=> ["price_42", " ", "roast", "^\t\n^-", "ice", "==", "cat", "\n", "east"]
```

**17)** Filter all elements whose first non-whitespace character is not a `#` character. Any element made up of only whitespace characters should be ignored as well.

```ruby
>> items = ['    #comment', "\t\napple #42", '#oops', 'sure', 'no#1', "\t\r\f"]

##### add your solution here
=> ["\t\napple #42", "sure", "no#1"]
```

**18)** Extract all whole words for the given input strings. However, based on user input `ignore`, do not match words if they contain any character present in the `ignore` variable. Assume that `ignore` variable will not contain any regexp metacharacters.

```ruby
>> s1 = 'match after the last newline character'
>> s2 = 'and then you want to test'

>> ignore = 'aty'
>> pat =        ##### add your solution here
>> s1.scan(pat)
=> ["newline"]
>> s2.scan(pat)
=> []

>> ignore = 'esw'
>> pat =        ##### add your solution here
>> s1.scan(pat)
=> ["match"]
>> s2.scan(pat)
=> ["and", "you", "to"]
```

**19)** Filter all whole elements with optional whitespaces at the start followed by three to five non-digit characters. Whitespaces at the start should not be part of the calculation for non-digit characters.

```ruby
>> items = ["\t \ncat", 'goal', ' oh', 'he-he', 'goal2', 'ok ', 'sparrow']

##### add your solution here
=> ["\t \ncat", "goal", "he-he", "ok "]
```

**20)** Modify the given regexp such that it gives the expected result.

```ruby
>> ip = '( S:12 E:5 S:4 and E:123 ok S:100 & E:10 S:1 - E:2 S:42 E:43 )'

# wrong output
>> ip.scan(/S:\d+.*?E:\d{2,}/)
=> ["S:12 E:5 S:4 and E:123", "S:100 & E:10", "S:1 - E:2 S:42 E:43"]

# expected output
##### add your solution here
=> ["S:4 and E:123", "S:100 & E:10", "S:42 E:43"]
```

<br>

# Groupings and backreferences

**1)** Replace the space character that occurs after a word ending with `a` or `r` with a newline character.

```ruby
>> ip = 'area not a _a2_ roar took 22'

>> puts ip.gsub()       ##### add your solution here
area
not a
_a2_ roar
took 22
```

**2)** Add `[]` around words starting with `s` and containing `e` and `t` in any order.

```ruby
>> ip = 'sequoia subtle exhibit asset sets2 tests si_te'

##### add your solution here
=> "sequoia [subtle] exhibit asset [sets2] tests [si_te]"
```

**3)** Replace all whole words with `X` that start and end with the same word character (irrespective of case). Single character word should get replaced with `X` too, as it satisfies the stated condition.

```ruby
>> ip = 'oreo not a _a2_ Roar took 22'

##### add your solution here
=> "X not X X X took X"
```

**4)** Convert the given *markdown* headers to corresponding *anchor* tags. Consider the input to start with one or more `#` characters followed by space and word characters. The `name` attribute is constructed by converting the header to lowercase and replacing spaces with hyphens. Can you do it without using a capture group?

```ruby
>> header1 = '# Regular Expressions'
>> header2 = '## Named capture groups'

>> anchor =     ##### add your solution here

##### add your solution here for header1
=> "# <a name='regular-expressions'></a>Regular Expressions"
##### add your solution here for header2
=> "## <a name='named-capture-groups'></a>Named capture groups"
```

**5)** Convert the given *markdown* anchors to corresponding *hyperlinks*.

```ruby
>> anchor1 = "# <a name='regular-expressions'></a>Regular Expressions"
>> anchor2 = "## <a name='subexpression-calls'></a>Subexpression calls"

>> hyperlink =      ##### add your solution here

##### add your solution here for anchor1
=> "[Regular Expressions](#regular-expressions)"
##### add your solution here for anchor2
=> "[Subexpression calls](#subexpression-calls)"
```

**6)** Count the number of whole words that have at least two occurrences of consecutive repeated alphabets. For example, words like `stillness` and `Committee` should be counted but not words like `root` or `readable` or `rotational`.

```ruby
'> ip = %q{oppressed abandon accommodation bloodless
'> carelessness committed apparition innkeeper
'> occasionally afforded embarrassment foolishness
'> depended successfully succeeded
>> possession cleanliness suppress}

##### add your solution here
=> 13
```

**7)** For the given input string, replace all occurrences of digit sequences with only the unique non-repeating sequence. For example, `232323` should be changed to `23` and `897897` should be changed to `897`. If there are no repeats (for example `1234`) or if the repeats end prematurely (for example `12121`), it should not be changed.

```ruby
>> ip = '1234 2323 453545354535 9339 11 60260260'

##### add your solution here
=> "1234 23 4535 9339 1 60260260"
```

**8)** Replace sequences made up of words separated by `:` or `.` by the first word of the sequence. Such sequences will end when `:` or `.` is not followed by a word character.

```ruby
>> ip = 'wow:Good:2_two.five: hi-2 bye kite.777:water.'

##### add your solution here
=> "wow hi-2 bye kite"
```

**9)** Replace sequences made up of words separated by `:` or `.` by the last word of the sequence. Such sequences will end when `:` or `.` is not followed by a word character.

```ruby
>> ip = 'wow:Good:2_two.five: hi-2 bye kite.777:water.'

##### add your solution here
=> "five hi-2 bye water"
```

**10)** Split the given input string on one or more repeated sequence of `cat`.

```ruby
>> ip = 'firecatlioncatcatcatbearcatcatparrot'

##### add your solution here
=> ["fire", "lion", "bear", "parrot"]
```

**11)** For the given input string, find all occurrences of digit sequences with at least one repeating sequence. For example, `232323` and `897897`. If the repeats end prematurely, for example `12121`, it should not be matched.

```ruby
>> ip = '1234 2323 453545354535 9339 11 60260260'

>> pat =        ##### add your solution here

# entire sequences in the output
##### add your solution here
=> ["2323", "453545354535", "11"]

# only the unique sequence in the output
##### add your solution here
=> ["23", "4535", "1"]
```

**12)** Convert the comma separated strings to corresponding `hash` objects as shown below. The keys are `name`, `maths` and `phy` for the three fields in the input strings.

```ruby
>> row1 = 'rohan,75,89'
>> row2 = 'rose,88,92'

>> pat =        ##### add your solution here

##### add your solution here for row1
=> {"name"=>"rohan", "maths"=>"75", "phy"=>"89"}
##### add your solution here for row2
=> {"name"=>"rose", "maths"=>"88", "phy"=>"92"}
```

**13)** Surround all whole words with `()`. Additionally, if the whole word is `imp` or `ant`, delete them. Can you do it with just a single substitution?

```ruby
>> ip = 'tiger imp goat eagle ant important'

##### add your solution here
=> "(tiger) () (goat) (eagle) () (important)"
```

**14)** Filter all elements that contain a sequence of lowercase alphabets followed by `-` followed by digits. They can be optionally surrounded by `{{` and `}}`. Any partial match shouldn't be part of the output.

```ruby
>> ip = %w[{{apple-150}} {{mango2-100}} {{cherry-200 grape-87 {{go-to}}]

##### add your solution here
=> ["{{apple-150}}", "grape-87"]
```

**15)** Extract all hexadecimal character sequences, with `0x` optional prefix. Match the characters case insensitively, and the sequences shouldn't be surrounded by other word characters.

```ruby
>> str1 = '128A foo 0xfe32 34 0xbar'
>> str2 = '0XDEADBEEF place 0x0ff1ce bad'

>> hex_seq =        ##### add your solution here

>> str1.scan(hex_seq)
=> ["128A", "0xfe32", "34"]
>> str2.scan(hex_seq)
=> ["0XDEADBEEF", "0x0ff1ce", "bad"]
```

**16)** Replace sequences made up of words separated by `:` or `.` by the first/last word of the sequence and the separator. Such sequences will end when `:` or `.` is not followed by a word character.

```ruby
>> ip = 'wow:Good:2_two.five: hi-2 bye kite.777:water.'

# first word of the sequence
##### add your solution here
=> "wow: hi-2 bye kite."

# last word of the sequence
##### add your solution here
=> "five: hi-2 bye water."
```

**17)** For the given input strings, extract `if` followed by any number of nested parentheses. Assume that there will be only one such pattern per input string.

```ruby
>> ip1 = 'for (((i*3)+2)/6) if(3-(k*3+4)/12-(r+2/3)) while()'
>> ip2 = 'if+while if(a(b)c(d(e(f)1)2)3) for(i=1)'

>> pat =        ##### add your solution here

>> ip1[pat]
=> "if(3-(k*3+4)/12-(r+2/3))"
>> ip2[pat]
=> "if(a(b)c(d(e(f)1)2)3)"
```

**18)** The given input string has sequences made up of words separated by `:` or `.` and such sequences will end when `:` or `.` is not followed by a word character. For all such sequences, display only the last word followed by `-` followed by the first word.

```ruby
>> ip = 'wow:Good:2_two.five: hi-2 bye kite.777:water.'

##### add your solution here
=> ["five-wow", "water-kite"]
```

<br>

# Lookarounds

>![info](../images/info.svg) Please use lookarounds for solving the following exercises even if you can do it without lookarounds. Unless you cannot use lookarounds for cases like variable length lookbehinds.

**1)** Replace all whole words with `X` unless it is preceded by a `(` character.

```ruby
>> ip = '(apple) guava berry) apple (mango) (grape'

##### add your solution here
=> "(apple) X X) X (mango) (grape"
```

**2)** Replace all whole words with `X` unless it is followed by a `)` character.

```ruby
>> ip = '(apple) guava berry) apple (mango) (grape'

##### add your solution here
=> "(apple) X berry) X (mango) (X"
```

**3)** Replace all whole words with `X` unless it is preceded by `(` or followed by `)` characters.

```ruby
>> ip = '(apple) guava berry) apple (mango) (grape'

##### add your solution here
=> "(apple) X berry) X (mango) (grape"
```

**4)** Extract all whole words that do not end with `e` or `n`.

```ruby
>> ip = 'a_t row on Urn e note Dust n end a2-e|u'

##### add your solution here
=> ["a_t", "row", "Dust", "end", "a2", "u"]
```

**5)** Extract all whole words that do not start with `a` or `d` or `n`.

```ruby
>> ip = 'a_t row on Urn e note Dust n end a2-e|u'

##### add your solution here
=> ["row", "on", "Urn", "e", "Dust", "end", "e", "u"]
```

**6)** Extract all whole words only if they are followed by `:` or `,` or `-`.

```ruby
>> ip = 'Poke,on=-=so_good:ink.to/is(vast)ever2-sit'

##### add your solution here
=> ["Poke", "so_good", "ever2"]
```

**7)** Extract all whole words only if they are preceded by `=` or `/` or `-`.

```ruby
>> ip = 'Poke,on=-=so_good:ink.to/is(vast)ever2-sit'

##### add your solution here
=> ["so_good", "is", "sit"]
```

**8)** Extract all whole words only if they are preceded by `=` or `:` and followed by `:` or `.`.

```ruby
>> ip = 'Poke,on=-=so_good:ink.to/is(vast)ever2-sit'

##### add your solution here
=> ["so_good", "ink"]
```

**9)** Extract all whole words only if they are preceded by `=` or `:` or `.` or `(` or `-` and not followed by `.` or `/`.

```ruby
>> ip = 'Poke,on=-=so_good:ink.to/is(vast)ever2-sit'

##### add your solution here
=> ["so_good", "vast", "sit"]
```

**10)** Remove the leading and trailing whitespaces from all the individual fields where `,` is the field separator.

```ruby
>> csv1 = " comma  ,separated ,values \t\r "
>> csv2 = 'good bad,nice  ice  , 42 , ,   stall   small'

>> remove_whitespace =      ##### add your solution here

>> csv1.gsub(remove_whitespace, '')
=> "comma,separated,values"
>> csv2.gsub(remove_whitespace, '')
=> "good bad,nice  ice,42,,stall   small"
```

**11)** Filter elements that satisfy all of these rules:

* should have at least two alphabets
* should have at least three digits
* should have at least one special character among `%` or `*` or `#` or `$`
* should not end with a whitespace character

```ruby
>> pwds = ['hunter2', 'F2H3u%9', "*X3Yz3.14\t", 'r2_d2_42', 'A $B C1234']

>> rule_chk =       ##### add your solution here

>> pwds.grep(rule_chk)
=> ["F2H3u%9", "A $B C1234"]
```

**12)** For the given string, surround all whole words with `{}` except for whole words `par` and `cat` and `apple`.

```ruby
>> ip = 'part; cat {super} rest_42 par scatter apple spar'

##### add your solution here
=> "{part}; cat {{super}} {rest_42} par {scatter} apple {spar}"
```

**13)** Extract the integer portion of floating-point numbers for the given string. Integers and numbers ending with `.` and no further digits should not be considered.

```ruby
>> ip = '12 ab32.4 go 5 2. 46.42 5'

##### add your solution here
=> ["32", "46"]
```

**14)** For the given input strings, extract all overlapping two character sequences.

```ruby
>> s1 = 'apple'
>> s2 = '1.2-3:4'

>> pat =        ##### add your solution here

##### add your solution here for s1
=> ["ap", "pp", "pl", "le"]
##### add your solution here for s2
=> ["1.", ".2", "2-", "-3", "3:", ":4"]
```

**15)** The given input strings contain fields separated by the `:` character. Delete `:` and the last field if there is a digit character anywhere before the last field.

```ruby
>> s1 = '42:cat'
>> s2 = 'twelve:a2b'
>> s3 = 'we:be:he:0:a:b:bother'
>> s4 = 'apple:banana-42:cherry:'
>> s5 = 'dragon:unicorn:centaur'

>> pat =        ##### add your solution here

##### add your solution here for s1
=> "42"
##### add your solution here for s2
=> "twelve:a2b"
##### add your solution here for s3
=> "we:be:he:0:a:b"
##### add your solution here for s4
=> "apple:banana-42:cherry"
##### add your solution here for s5
=> "dragon:unicorn:centaur"
```

**16)** Extract all whole words unless they are preceded by `:` or `<=>` or `----` or `#`.

```ruby
>> ip = '::very--at<=>row|in.a_b#b2c=>lion----east'

##### add your solution here
=> ["at", "in", "a_b", "lion"]
```

**17)** Match strings if it contains `qty` followed by `price` but not if there is any **whitespace** character or the string `error` between them.

```ruby
>> str1 = '23,qty,price,42'
>> str2 = 'qty price,oh'
>> str3 = '3.14,qty,6,errors,9,price,3'
>> str4 = "42\nqty-6,apple-56,price-234,error"
>> str5 = '4,price,3.14,qty,4'
>> str6 = '(qtyprice) (hi-there)'

>> neg =        ##### add your solution here

>> str1.match?(neg)
=> true
>> str2.match?(neg)
=> false
>> str3.match?(neg)
=> false
>> str4.match?(neg)
=> true
>> str5.match?(neg)
=> false
>> str6.match?(neg)
=> true
```

**18)** Can you reason out why the following regular expressions behave differently?

```ruby
>> ip = 'I have 12, he has 2!'

>> ip.gsub(/\b..\b/, '{\0}')
=> "{I }have {12}{, }{he} has{ 2}!"

>> ip.gsub(/(?<!\w)..(?!\w)/, '{\0}')
=> "I have {12}, {he} has {2!}"
```

**19)** The given input strings have fields separated by the `:` character. Assume that each string has a minimum of two fields and cannot have empty fields. Extract all fields, but stop if a field with a digit character is found.

```ruby
>> row1 = 'vast:a2b2:ride:in:awe:b2b:3list:end'
>> row2 = 'um:no:low:3e:s4w:seer'
>> row3 = 'oh100:apple:banana:fig'
>> row4 = 'Dragon:Unicorn:Wizard-Healer'

>> pat =        ##### add your solution here

>> row1.gsub(pat).map { $1 }
=> ["vast"]
>> row2.gsub(pat).map { $1 }
=> ["um", "no", "low"]
>> row3.gsub(pat).map { $1 }
=> []
>> row4.gsub(pat).map { $1 }
=> ["Dragon", "Unicorn", "Wizard-Healer"]
```

**20)** The given input strings have fields separated by the `:` character. Extract all fields only after a field containing a digit character is found. Assume that each string has a minimum of two fields and cannot have empty fields.

```ruby
>> row1 = 'vast:a2b2:ride:in:awe:b2b:3list:end'
>> row2 = 'um:no:low:3e:s4w:seer'
>> row3 = 'oh100:apple:banana:fig'
>> row4 = 'Dragon:Unicorn:Wizard-Healer'

>> pat =        ##### add your solution here

>> row1.scan(pat)
=> ["ride", "in", "awe", "b2b", "3list", "end"]
>> row2.scan(pat)
=> ["s4w", "seer"]
>> row3.scan(pat)
=> ["apple", "banana", "fig"]
>> row4.scan(pat)
=> []
```

**21)** The given input string has comma separated fields and some of them can occur more than once. For the duplicated fields, retain only the rightmost one. Assume that there are no empty fields.

```ruby
>> row = '421,cat,2425,42,5,cat,6,6,42,61,6,6,scat,6,6,4,Cat,425,4'

##### add your solution here
=> "421,2425,5,cat,42,61,scat,6,Cat,425,4"
```

<br>

# Modifiers

**1)** Remove from the first occurrence of `hat` to the last occurrence of `it` for the given input strings. Match these markers case insensitively.

```ruby
>> s1 = "But Cool THAT\nsee What okay\nwow quite"
>> s2 = 'it this hat is sliced HIT.'

>> pat =        ##### add your solution here

>> s1.sub(pat, '')
=> "But Cool Te"
>> s2.sub(pat, '')
=> "it this ."
```

**2)** Delete from the string `start` if it is at the beginning of a line up to the next occurrence of the string `end` at the end of a line. Match these keywords irrespective of case.

```ruby
'> para = %q{good start
'> start working on that
'> project you always wanted
'> to, do not let it end
'> hi there
'> start and end the end
'> 42
'> Start and try to
'> finish the End
>> bye}

>> pat =        ##### add your solution here

>> puts para.gsub(pat, '')
good start

hi there

42

bye
```

**3)** For the given *markdown* file, replace all occurrences of the string `ruby` (irrespective of case) with the string `Ruby`. However, any match within code blocks that start with the whole line ` ```ruby ` and end with the whole line ` ``` ` shouldn't be replaced. Consider the input file to be small enough to fit memory requirements.

Refer to the [exercises folder](https://github.com/learnbyexample/Ruby_Regexp/tree/master/exercises) for input files required to solve this exercise.

```ruby
>> ip_str = File.open('sample.md').read
>> pat =        ##### add your solution here

>> File.open('sample_mod.md', 'w') do |f|
?>   ip_str.split(pat).each_with_index do |s, i|
?>     f.write(i.odd? ? s : s.gsub(/ruby/i) { $&.capitalize })
>>   end
>> end

>> File.open('sample_mod.md').read == File.open('expected.md').read
=> true
```

**4)** Write a string method that changes the given input to alternate case (starting with lowercase first).

```ruby
?> def aLtErNaTe_CaSe(ip_str)
##### add your solution here
>> end

>> aLtErNaTe_CaSe('HI THERE!')
=> "hI tHeRe!"
>> aLtErNaTe_CaSe('good morning')
=> "gOoD mOrNiNg"
>> aLtErNaTe_CaSe('Sample123string42with777numbers')
=> "sAmPlE123sTrInG42wItH777nUmBeRs"
```

**5)** For the given input strings, match all of these three conditions:

* `This` case sensitively
* `nice` and `cool` case insensitively

```ruby
>> s1 = 'This is nice and Cool'
>> s2 = 'Nice and cool this is'
>> s3 = 'What is so nice and cool about This?'
>> s4 = 'nice,cool,This'
>> s5 = 'not nice This?'
>> s6 = 'This is not cool'

>> pat =        ##### add your solution here

>> s1.match?(pat)
=> true
>> s2.match?(pat)
=> false
>> s3.match?(pat)
=> true
>> s4.match?(pat)
=> true
>> s5.match?(pat)
=> false
>> s6.match?(pat)
=> false
```

**6)** For the given input strings, match if the string begins with `Th` and also contains a line that starts with `There`.

```ruby
>> s1 = "There there\nHave a cookie"
>> s2 = "This is a mess\nYeah?\nThereeeee"
>> s3 = "Oh\nThere goes the fun"
>> s4 = 'This is not\ngood\nno There'

>> pat =        ##### add your solution here

>> s1.match?(pat)
=> true
>> s2.match?(pat)
=> true
>> s3.match?(pat)
=> false
>> s4.match?(pat)
=> false
```

<br>

# Unicode

**1)** Output `true` or `false` depending on input string made up of ASCII characters or not. Consider the input to be non-empty strings and any character that isn't part of the 7-bit ASCII set should give `false`.

```ruby
>> str1 = '123—456'
>> str2 = 'good fοοd'
>> str3 = 'happy learning!'

##### add your solution here for str1
=> false
##### add your solution here for str2
=> false
##### add your solution here for str3
=> true
```

**2)** Retain only punctuation characters for the given strings (generated from codepoints). Use the Unicode character set definition for punctuation for solving this exercise.

```ruby
>> s1 = (0..0x7f).to_a.pack('U*')
>> s2 = (0x80..0xff).to_a.pack('U*')
>> s3 = (0x2600..0x27eb).to_a.pack('U*')

>> pat =        ##### add your solution here

>> s1.gsub(pat, '')
=> "!\"#%&'()*,-./:;?@[\\]_{}"
>> s2.gsub(pat, '')
=> "¡§«¶·»¿"
>> s3.gsub(pat, '')
=> "❨❩❪❫❬❭❮❯❰❱❲❳❴❵⟅⟆⟦⟧⟨⟩⟪⟫"
```

**3)** Explore the following Q&A threads.

* [stackoverflow: remove emoji from string](https://stackoverflow.com/q/24672834/4082052)
* [stackoverflow: why am I seeing different results for these two nearly identical regexp](https://stackoverflow.com/q/13573136/4082052)
* [stackoverflow: convert unicode number to integer](https://stackoverflow.com/q/37338708/4082052)
* [stackoverflow: replacing %uXXXX to the corresponding unicode codepoint](https://stackoverflow.com/q/28773392/4082052)

