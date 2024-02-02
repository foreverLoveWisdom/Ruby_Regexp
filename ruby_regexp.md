# Preface

Scripting and automation tasks often need to extract particular portions of text from input data or modify them from one format to another. This book will help you understand Regular Expressions, a mini-programming language for all sorts of text processing needs.

This book heavily leans on examples to present features of regular expressions one by one. It is recommended that you manually type each example and experiment with them. Make an effort to understand the sample input as well as the solution presented and check if the output changes (or not!) when you alter some part of the input and the command. As an analogy, consider learning to drive a car — no matter how much you read about them or listen to explanations, you'd need practical experience to become proficient.

## Prerequisites

You should be familiar with programming basics. You should also have a working knowledge of Ruby syntax and features like string formats, string and Enumerable methods.

You are also expected to get comfortable with reading manuals, searching online, visiting external links provided for further reading, tinkering with illustrated examples, asking for help when you are stuck and so on. In other words, be proactive and curious instead of just consuming the content passively.

If you have prior experience with a programming language, but new to Ruby, check out the [official quickstart guide](https://www.ruby-lang.org/en/documentation/quickstart/).

## Conventions

* The examples presented here have been tested with **Ruby version 3.3.0** and includes features not available in earlier versions.
* Code snippets shown are copy pasted from the `irb --simple-prompt` shell and modified for presentation purposes. Some commands are preceded by comments to provide context and explanations. Blank lines have been added to improve readability. `nil` return value is not shown for `puts` statements. Error messages are shortened. And so on.
* Unless otherwise noted, all examples and explanations are meant for **ASCII** characters.
* External links are provided throughout the book for you to explore certain topics in more depth.
* The [Ruby_Regexp repo](https://github.com/learnbyexample/Ruby_Regexp) has all the code snippets used in examples, exercises and other details related to the book. Solutions file is also provided. If you are not familiar with the `git` command, click the **Code** button on the webpage to get the files.

## Acknowledgements

* [ruby-lang documentation](https://www.ruby-lang.org/en/documentation/) — manuals and tutorials
* [/r/ruby/](https://old.reddit.com/r/ruby/) and [/r/regex/](https://old.reddit.com/r/regex/) — helpful forum for beginners and experienced programmers alike
* [stackoverflow](https://stackoverflow.com/) — for getting answers to pertinent questions on Ruby and regular expressions
* [tex.stackexchange](https://tex.stackexchange.com/) — for help on [pandoc](https://github.com/jgm/pandoc/) and `tex` related questions
* [canva](https://www.canva.com/) — cover image
* [Warning](https://commons.wikimedia.org/wiki/File:Warning_icon.svg) and [Info](https://commons.wikimedia.org/wiki/File:Info_icon_002.svg) icons by [Amada44](https://commons.wikimedia.org/wiki/User:Amada44) under public domain
* [oxipng](https://github.com/shssoichiro/oxipng), [pngquant](https://pngquant.org/) and [svgcleaner](https://github.com/RazrFalcon/svgcleaner) — optimizing images
* [gmovchan](https://github.com/gmovchan) for spotting a typo
* **KOTP** for spotting grammatical mistakes

Special thanks to Allen Downey. An attempt at translating his book [Think Python](https://greenteapress.com/wp/think-python-2e/) to [Think Ruby](https://github.com/learnbyexample/ThinkRubyBuild) gave me the confidence to publish my own book.

## Feedback and Errata

I would highly appreciate it if you'd let me know how you felt about this book. It could be anything from a simple thank you, pointing out a typo, mistakes in code snippets, which aspects of the book worked for you (or didn't!) and so on. Reader feedback is essential and especially so for self-published authors.

You can reach me via:

* Issue Manager: [https://github.com/learnbyexample/Ruby_Regexp/issues](https://github.com/learnbyexample/Ruby_Regexp/issues)
* E-mail: learnbyexample.net@gmail.com
* Twitter: [https://twitter.com/learn_byexample](https://twitter.com/learn_byexample)

## Author info

Sundeep Agarwal is a lazy being who prefers to work just enough to support his modest lifestyle. He accumulated vast wealth working as a Design Engineer at Analog Devices and retired from the corporate world at the ripe age of twenty-eight. Unfortunately, he squandered his savings within a few years and had to scramble trying to earn a living. Against all odds, selling programming ebooks saved his lazy self from having to look for a job again. He can now afford all the fantasy ebooks he wants to read and spends unhealthy amount of time browsing the internet.

When the creative muse strikes, he can be found working on yet another programming ebook (which invariably ends up having at least one example with regular expressions). Researching materials for his ebooks and everyday social media usage drowned his bookmarks, so he maintains curated resource lists for sanity sake. He is thankful for free learning resources and open source tools. His own contributions can be found at [https://github.com/learnbyexample](https://github.com/learnbyexample).

**List of books:** https://learnbyexample.github.io/books/

## License

This work is licensed under a [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-nc-sa/4.0/).

Code snippets are available under [MIT License](https://github.com/learnbyexample/Ruby_Regexp/blob/master/LICENSE).

Resources mentioned in Acknowledgements section above are available under original licenses.

## Book version

3.0

See [Version_changes.md](https://github.com/learnbyexample/Ruby_Regexp/blob/master/Version_changes.md) to track changes across book versions.

# Why is it needed?

Regular Expressions is a versatile tool for text processing. You'll find them included as part of the standard library of most programming languages that are used for scripting purposes. If not, you can usually find a third-party library. Syntax and features of regular expressions vary from language to language. Ruby's offering is based upon the [Onigmo regular expressions library](https://github.com/k-takata/Onigmo/blob/master/doc/RE).

The `String` class comes loaded with variety of methods to deal with text. So, what's so special about regular expressions and why would you need it? For learning and understanding purposes, one can view regular expressions as a mini-programming language in itself, specialized for text processing. Parts of a regular expression can be saved for future use, analogous to variables and functions. There are ways to perform AND, OR, NOT conditionals. Operations similar to range and string repetition operators and so on.

Here are some common use cases:

* Sanitizing a string to ensure that it satisfies a known set of rules. For example, to check if a given string matches password rules.
* Filtering or extracting portions on an abstract level like alphabets, digits, punctuation and so on.
* Qualified string replacement. For example, at the start or the end of a string, only whole words, based on surrounding text, etc.

You are likely to be familiar with graphical search and replace tools, like the screenshot shown below from LibreOffice Writer. **Match case**, **Whole words only**, **Replace** and **Replace All** are some of the basic features supported by regular expressions.

![find and replace](images/find_replace.png)

Another real world use case is password validation. The screenshot below is from GitHub sign up page. Performing multiple checks like **string length** and the **type of characters allowed** is another core feature of regular expressions.

![password check](images/password_check.png)

Here are some articles on regular expressions to know about its history and the type of problems it is suited for.

* [The true power of regular expressions](https://www.npopov.com/2012/06/15/The-true-power-of-regular-expressions.html) — it also includes a nice explanation of what *regular* means in this context
* [softwareengineering: Is it a must for every programmer to learn regular expressions?](https://softwareengineering.stackexchange.com/questions/133968/is-it-a-must-for-every-programmer-to-learn-regular-expressions)
* [softwareengineering: When you should NOT use Regular Expressions?](https://softwareengineering.stackexchange.com/questions/113237/when-you-should-not-use-regular-expressions)
* [codinghorror: Now You Have Two Problems](https://blog.codinghorror.com/regular-expressions-now-you-have-two-problems/) — demystifies the often (mis)quoted meme
* [wikipedia: Regular expression](https://en.wikipedia.org/wiki/Regular_expression) — this article includes discussion on regular expressions as a formal language as well as details about various implementations

## How this book is organized

This book introduces concepts one by one and exercises at the end of chapters will require only the features introduced until that chapter. Each concept is accompanied by plenty of examples to cover multiple problems and corner cases. As mentioned before, it is highly recommended that you follow along the examples by typing out the code snippets manually. It is important to understand both the nature of the sample input string as well as the actual programming command used. There are two interlude chapters that give an overview of useful tools and some more resources are collated in the final chapter.

* [Regexp introduction](#regexp-introduction)
* [Anchors](#anchors)
* [Alternation and Grouping](#alternation-and-grouping)
* [Escaping metacharacters](#escaping-metacharacters)
* [Dot metacharacter and Quantifiers](#dot-metacharacter-and-quantifiers)
* [Interlude: Tools for debugging and visualization](#interlude-tools-for-debugging-and-visualization)
* [Working with matched portions](#working-with-matched-portions)
* [Character class](#character-class)
* [Groupings and backreferences](#groupings-and-backreferences)
* [Interlude: Common tasks](#interlude-common-tasks)
* [Lookarounds](#lookarounds)
* [Modifiers](#modifiers)
* [Unicode](#unicode)
* [Further Reading](#further-reading)

By the end of the book, you should be comfortable with both writing and reading regular expressions, how to debug them and know when to *avoid* them.

# Regexp introduction

In this chapter, you'll get to know how to declare and use regexps. For some examples, the equivalent normal string method is also shown for comparison. The main focus will be to get you comfortable with syntax and text processing examples. Three methods will be introduced in this chapter. The `match?` method to search if the input contains a string and the `sub` and `gsub` methods to substitute a portion of the input with something else. Regular expression features will be covered from the next chapter onwards.

>![info](images/info.svg) This book will use the terms **regular expressions** and **regexp** interchangeably.

## Regexp documentation

It is always a good idea to know where to find the documentation. Visit [ruby-doc: Regexp](https://ruby-doc.org/3.3.0/Regexp.html) for information on `Regexp` class, available methods, syntax, features, examples and more. Here's a quote from an older version of the documentation:

>Regular expressions (*regexps*) are patterns which describe the contents of a string. They're used for testing whether a string contains a given pattern, or extracting the portions that match. They are created with the `/pat/` and `%r{pat}` literals or the `Regexp.new` constructor.

## match? method

First up, a simple example to test whether a string is part of another string or not. Normally, you'd use the `include?` method and pass a string as an argument. For regular expressions, use the `match?` method and enclose the search string within `//` delimiters (regexp literal).

```ruby
>> sentence = 'This is a sample string'

# check if 'sentence' contains the given search string
>> sentence.include?('is')
=> true
>> sentence.include?('z')
=> false

# check if 'sentence' matches the pattern described by the regexp argument
>> sentence.match?(/is/)
=> true
>> sentence.match?(/z/)
=> false

# unlike the include? method, match? is commutative
>> /ring/.match?(sentence)
=> true
```

The `match?` method accepts an optional second argument which specifies the index to start searching from.

```ruby
>> sentence = 'This is a sample string'

>> sentence.match?(/is/, 2)
=> true
>> sentence.match?(/is/, 6)
=> false
```

## Regexp modifiers

Some of the regular expressions functionality is enabled by passing modifiers, represented by an alphabet character. Modifiers are similar to command-line options, for example `grep -i` will perform case insensitive matching. These will be discussed in detail in the [Modifiers](#modifiers) chapter. Here's an example for the `i` modifier.

```ruby
>> sentence = 'This is a sample string'

>> sentence.match?(/this/)
=> false

# 'i' modifier enables case insensitive matching
>> sentence.match?(/this/i)
=> true
```

## Regexp literal reuse and interpolation

The regexp literal can be saved in a variable. This helps to improve code clarity, pass around as method arguments, enable reuse, etc.

```ruby
>> pet = /dog/i
>> pet
=> /dog/i

>> 'They bought a Dog'.match?(pet)
=> true
>> 'A cat crossed their path'.match?(pet)
=> false
```

Similar to double quoted string literals, you can use interpolation and escape sequences within a regexp literal. See [ruby-doc: Strings](https://ruby-doc.org/3.3.0/syntax/literals_rdoc.html#label-String+Literals) for syntax details on string escape sequences. Regexp literals have their own special escapes, which will be discussed in the [Escape sequences](#escape-sequences) section.

```ruby
>> "cat\tdog".match?(/\t/)
=> true
>> "cat\tdog".match?(/\a/)
=> false

>> greeting = 'hi'
>> /#{greeting} there/
=> /hi there/
>> /#{greeting.upcase} there/
=> /HI there/
>> /#{2**4} apples/
=> /16 apples/
```

## sub and gsub methods

For search and replace requirements, use the `sub` or `gsub` methods. The `sub` method will replace only the first occurrence of the match, whereas `gsub` will replace all the occurrences. The regexp pattern to match against the input string has to be passed as the first argument. The second argument specifies the string to replace the portions matched by the pattern.

```ruby
>> greeting = 'Have a nice weekend'

# replace the first occurrence of 'e' with 'E'
>> greeting.sub(/e/, 'E')
=> "HavE a nice weekend"

# replace all occurrences of 'e' with 'E'
>> greeting.gsub(/e/, 'E')
=> "HavE a nicE wEEkEnd"
```

Use the `sub!` and `gsub!` methods for in-place substitution.

```ruby
>> word = 'cater'

# this will return a string object, won't modify the 'word' variable
>> word.sub(/cat/, 'wag')
=> "wager"
>> word
=> "cater"

# this will modify the 'word' variable itself
>> word.sub!(/cat/, 'wag')
=> "wager"
>> word
=> "wager"
```

## Regexp operators

Ruby also provides operators for regexp matching.

* `=~` match operator returns the index of the first match and `nil` if a match is not found
* `!~` match operator returns `true` if the input string *doesn't* contain the given regexp and `false` otherwise
* `===` match operator returns `true` or `false` similar to the `match?` method

```ruby
>> sentence = 'This is a sample string'

# can also use: /is/ =~ sentence
>> sentence =~ /is/
=> 2
>> sentence =~ /z/
=> nil

# can also use: /z/ !~ sentence
>> sentence !~ /z/
=> true
>> sentence !~ /is/
=> false
```

Just like the `match?` method, both `=~` and `!~` can be used in a conditional statement.

```ruby
>> sentence = 'This is a sample string'

>> puts 'hi' if sentence =~ /is/
hi

>> puts 'oh' if sentence !~ /z/
oh
```

The `===` operator comes in handy with Enumerable methods like `grep`, `grep_v`, `all?`, `any?`, etc.

```ruby
>> sentence = 'This is a sample string'

# regexp literal has to be on LHS and input string on RHS
>> /is/ === sentence
=> true
>> /z/ === sentence
=> false

>> words = %w[cat attempt tattle]
>> words.grep(/tt/)
=> ["attempt", "tattle"]
>> words.all?(/at/)
=> true
>> words.none?(/temp/)
=> false
```

>![info](images/info.svg) A key difference from the `match?` method is that these operators will also set regexp related [global variables](#regexp-global-variables).

## Cheatsheet and Summary

| Note    | Description |
| ------- | ----------- |
| [ruby-doc: Regexp](https://ruby-doc.org/3.3.0/Regexp.html) | Ruby Regexp documentation |
| [Onigmo doc](https://github.com/k-takata/Onigmo/blob/master/doc/RE) | Onigmo library documentation |
| `/pat/` or `%r{pat}` | regexp literal |
|  | interpolation and escape sequences can also be used |
| `var = /pat/` | save regexp literals in a variable |
| `/pat1#{expr}pat2/` | use the result of an expression to build regexps |
| `s.match?(/pat/)` | check if string `s` matches the pattern `/pat/` |
| | returns `true` or `false` |
| `s.match?(/pat/, 3)` | optional 2nd argument changes the starting index of search |
| `/pat/i` | modifier `i` matches alphabets case insensitively |
| `s.sub(/pat/, 'replace')` | search and replace the first matching occurrence |
| | use `gsub` to replace all occurrences |
| | use `sub!` and `gsub!` for in-place substitutions |
| `s =~ /pat/` or `/pat/ =~ s` | returns the index of the first match or `nil` |
| `s !~ /pat/` or `/pat/ !~ s` | returns `true` if no match, `false` otherwise |
| `/pat/ === s` | returns `true` or `false` similar to `match?` |
| | these operators will also set [regexp global variables](#regexp-global-variables) |

This chapter introduced the `Regexp` class and the methods `match?`, `sub` and `gsub` were discussed. You also learnt how to save and reuse regexp literals, how to specify modifiers and how to use regexp operators.

You might wonder why there are so many ways to test a matching condition with regexps. The most common approach is to use the `match?` method in a conditional statement. If you need the position of match, use the `=~` operator or the `index` method. The `===` operator is usually relevant in Enumerable methods. Usage of global variables will be covered in later chapters. The `=~` and `!~` operators are also prevalent in command-line usage (see my [Ruby One-Liners Guide](https://learnbyexample.github.io/learn_ruby_oneliners/one-liner-introduction.html) for examples).

The next section has exercises to test your understanding of the concepts introduced in this chapter. Please do solve them before moving on to the next chapter.

## Exercises

>![info](images/info.svg) Try to solve the exercises in every chapter using only the features discussed until that chapter. Some of the exercises will be easier to solve with techniques presented in the later chapters, but the aim of these exercises is to explore the features presented so far.

>![info](images/info.svg) All the exercises are also collated together in one place at [Exercises.md](https://github.com/learnbyexample/Ruby_Regexp/blob/master/exercises/Exercises.md). For solutions, see [Exercise_solutions.md](https://github.com/learnbyexample/Ruby_Regexp/blob/master/exercises/Exercise_solutions.md).

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

# Anchors

Now that you're familiar with regexp syntax and some of the methods, the next step is to know about the special features of regular expressions. In this chapter, you'll be learning about qualifying a pattern. Instead of matching anywhere in the given input string, restrictions can be specified. For now, you'll see the ones that are already part of regular expression features. In later chapters, you'll learn how to define custom rules.

These restrictions are made possible by assigning special meaning to certain characters and escape sequences. The characters with special meaning are known as **metacharacters** in regexp parlance. In case you need to match those characters literally, you need to escape them with a `\` character (discussed in the [Escaping with backslash](#escaping-with-backslash) section).

## String anchors

This restriction is about qualifying a regexp to match only at the start or end of an input string. These provide functionality similar to the string methods `start_with?` and `end_with?`. There are three different escape sequences related to string level regexp anchors. First up is `\A` which restricts the matching to the start of string.

```ruby
# \A is placed as a prefix to the search term
>> 'cater'.match?(/\Acat/)
=> true
>> 'concatenation'.match?(/\Acat/)
=> false

>> "hi hello\ntop spot".match?(/\Ahi/)
=> true
>> "hi hello\ntop spot".match?(/\Atop/)
=> false
```

To restrict the match to the end of string, `\z` (lowercase `z`) is used.

```ruby
# \z is placed as a suffix to the search term
>> 'spare'.match?(/are\z/)
=> true
>> 'nearest'.match?(/are\z/)
=> false

>> words = %w[surrender unicorn newer door empty eel pest]
>> words.grep(/er\z/)
=> ["surrender", "newer"]
>> words.grep(/t\z/)
=> ["pest"]
```

There is another end of string anchor `\Z` (uppercase). It is similar to `\z` but if newline is the last character, then `\Z` allows matching just before the newline character.

```ruby
# same result for both \z and \Z
# as there is no newline character at the end of string
>> "spare\ndare".sub(/are\z/, 'X')
=> "spare\ndX"
>> "spare\ndare".sub(/are\Z/, 'X')
=> "spare\ndX"

# different results as there is a newline character at the end of string
>> "spare\ndare\n".sub(/are\z/, 'X')
=> "spare\ndare\n"
>> "spare\ndare\n".sub(/are\Z/, 'X')
=> "spare\ndX\n"
```

Combining both the start and end string anchors, you can restrict the matching to the whole string. Which is similar to comparing strings using the `==` operator.

```ruby
>> 'cat'.match?(/\Acat\z/)
=> true
>> 'cater'.match?(/\Acat\z/)
=> false
>> 'concatenation'.match?(/\Acat\z/)
=> false
```

The anchors can be used by themselves as a pattern. Helps to insert text at the start or end of string, emulating string concatenation operations. These might not feel like useful capability, but combined with other regexp features they become quite a handy tool.

```ruby
>> 'live'.sub(/\A/, 're')
=> "relive"
>> 'send'.sub(/\A/, 're')
=> "resend"

>> 'cat'.sub(/\z/, 'er')
=> "cater"
>> 'hack'.sub(/\z/, 'er')
=> "hacker"
```

## Line anchors

A string input may contain single or multiple lines. The newline character `\n` is considered as the line separator. There are two line anchors, `^` metacharacter for matching the start of line and `$` for matching the end of line. If there are no newline characters in the input string, these will behave exactly the same as `\A` and `\z` respectively.

```ruby
>> pets = 'cat and dog'

>> pets.match?(/^cat/)
=> true
>> pets.match?(/^dog/)
=> false

>> pets.match?(/dog$/)
=> true
>> pets.match?(/^dog$/)
=> false
```

Here are some multiline examples to distinguish line anchors from string anchors.

```ruby
# check if any line in the string starts with 'top'
>> "hi hello\ntop spot".match?(/^top/)
=> true

# check if any line in the string ends with 'er'
>> "spare\npar\nera\ndare".match?(/er$/)
=> false

# filter lines ending with 'are'
>> "spare\npar\ndare".each_line.grep(/are$/)
=> ["spare\n", "dare"]

# check if any whole line in the string is 'par'
>> "spare\npar\ndare".match?(/^par$/)
=> true
```

Just like string anchors, you can use the line anchors by themselves as a pattern. `gsub` and `puts` will be used here to better illustrate the transformation. The `gsub` method returns an Enumerator if you don't specify a replacement string nor pass a block. That paves a way to use all those wonderful Enumerator and Enumerable methods.

```ruby
>> str = "catapults\nconcatenate\ncat"

>> puts str.gsub(/^/, '1: ')
1: catapults
1: concatenate
1: cat
>> puts str.gsub(/^/).with_index(1) { "#{_2}: " }
1: catapults
2: concatenate
3: cat

>> puts str.gsub(/$/, '.')
catapults.
concatenate.
cat.
```

If there is a newline character at the end of the input string, there is an additional end of line match but no additional start of line match.

```ruby
>> puts "1\n2\n".gsub(/^/, 'fig ')
fig 1
fig 2
>> puts "1\n\n".gsub(/^/, 'fig ')
fig 1
fig 

# note the number of lines in the output
>> puts "1\n2\n".gsub(/$/, ' banana')
1 banana
2 banana
 banana
>> puts "1\n\n".gsub(/$/, ' banana')
1 banana
 banana
 banana
```

>![warning](images/warning.svg) If you are dealing with Windows OS based text files, you'll have to convert the `\r\n` line endings to `\n` first. Which is easily handled by many of the Ruby methods. For example, you can specify the line ending to use for the `File.open` method, the `split` string method handles all whitespaces by default and so on. Or, you can handle `\r` as an optional character with quantifiers (see the [Greedy quantifiers](#greedy-quantifiers) section for examples).

## Word anchors

The third type of restriction is word anchors. Alphabets (irrespective of case), digits and the underscore character qualify as word characters. You might wonder why there are digits and underscores as well, why not just alphabets? This comes from variable and function naming conventions — typically alphabets, digits and underscores are allowed. So, the definition is more oriented to programming languages than natural ones.

The escape sequence `\b` denotes a word boundary. This works for both the start and end of word anchoring. Start of word means either the character prior to the word is a non-word character or there is no character (start of string). Similarly, end of word means the character after the word is a non-word character or no character (end of string). This implies that you cannot have word boundaries without a word character.

```ruby
>> words = 'par spar apparent spare part'

# replace 'par' irrespective of where it occurs
>> words.gsub(/par/, 'X')
=> "X sX apXent sXe Xt"

# replace 'par' only at the start of word
>> words.gsub(/\bpar/, 'X')
=> "X spar apparent spare Xt"

# replace 'par' only at the end of word
>> words.gsub(/par\b/, 'X')
=> "X sX apparent spare part"

# replace 'par' only if it is not part of another word
>> words.gsub(/\bpar\b/, 'X')
=> "X spar apparent spare part"
```

Using word boundary as a pattern by itself can yield creative solutions:

```ruby
# space separated words to double quoted csv
# note the use of the 'tr' string method
>> words = 'par spar apparent spare part'
>> puts words.gsub(/\b/, '"').tr(' ', ',')
"par","spar","apparent","spare","part"

>> '-----hello-----'.gsub(/\b/, ' ')
=> "----- hello -----"

# make a programming statement more readable
# shown for illustration purpose only, won't work for all cases
>> 'output=num1+35*42/num2'.gsub(/\b/, ' ')
=> " output = num1 + 35 * 42 / num2 "
# excess space at the start/end of string can be stripped off
# later you'll learn how to add a qualifier so that strip is not needed
>> 'output=num1+35*42/num2'.gsub(/\b/, ' ').strip
=> "output = num1 + 35 * 42 / num2"
```

## Opposite Word anchors

The word boundary has an opposite anchor too. `\B` matches wherever `\b` doesn't match. This duality will be seen with some other escape sequences too. Negative logic is handy in many text processing situations. But use it with care, you might end up matching things you didn't intend!

```ruby
>> words = 'par spar apparent spare part'

# replace 'par' if it is not at the start of word
>> words.gsub(/\Bpar/, 'X')
=> "par sX apXent sXe part"
# replace 'par' at the end of word but not the whole word 'par'
>> words.gsub(/\Bpar\b/, 'X')
=> "par sX apparent spare part"
# replace 'par' if it is not at the end of word
>> words.gsub(/par\B/, 'X')
=> "par spar apXent sXe Xt"
# replace 'par' if it is surrounded by word characters
>> words.gsub(/\Bpar\B/, 'X')
=> "par spar apXent sXe part"
```

Here are some standalone pattern usage to compare and contrast the two word anchors.

```ruby
>> 'copper'.gsub(/\b/, ':')
=> ":copper:"
>> 'copper'.gsub(/\B/, ':')
=> "c:o:p:p:e:r"

>> '-----hello-----'.gsub(/\b/, ' ')
=> "----- hello -----"
>> '-----hello-----'.gsub(/\B/, ' ')
=> " - - - - -h e l l o- - - - - "
```

## Cheatsheet and Summary

| Note    | Description |
| ------- | ----------- |
| `\A` | restricts the match to the start of string |
| `\z` | restricts the match to the end of string |
| `\Z` | restricts the match to end or just before a newline at the end of string |
| `\n` | line separator |
|      | DOS-style files need special attention |
| metacharacter | characters with special meaning in regexp |
| `^` | restricts the match to the start of line |
| `$` | restricts the match to the end of line |
| `\b` | restricts the match to the start and end of words |
|  | word characters: alphabets, digits, underscore |
| `\B` | matches wherever `\b` doesn't match |

In this chapter, you've begun to see building blocks of regular expressions and how they can be used in interesting ways. At the same time, regular expression is but another tool for text processing problems. Often, you'd get simpler solution by combining regular expressions with other string and Enumerable methods. Practice, experience and imagination would help you in constructing creative solutions. In the coming chapters, you'll see more applications of anchors as well as the [`\G` anchor](#g-anchor) which is best understood in combination with other regexp features.

## Exercises

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

# Alternation and Grouping

Many a times, you want to check if the input string matches multiple patterns. For example, whether a product's color is *green* or *blue* or *red*. This chapter will show how to use alternation for such cases. These patterns can have some common elements between them, in which case grouping helps to form terser regexps. This chapter will also discuss the precedence rules used to determine which alternation wins.

## Alternation

A conditional expression combined with logical OR evaluates to `true` if any of the conditions is satisfied. Similarly, in regular expressions, you can use the `|` metacharacter to combine multiple patterns to indicate logical OR. The matching will succeed if any of the alternate patterns is found in the input string. These alternatives have the full power of a regular expression, for example they can have their own independent anchors. Here are some examples.

```ruby
# match either 'cat' or 'dog'
>> pet = /cat|dog/
>> 'I like cats'.match?(pet)
=> true
>> 'I like dogs'.match?(pet)
=> true
>> 'I like parrots'.match?(pet)
=> false

# replace 'cat' at the start of string or 'cat' at the end of word
>> 'catapults concatenate cat scat cater'.gsub(/\Acat|cat\b/, 'X')
=> "Xapults concatenate X sX cater"

# replace 'cat' or 'dog' or 'fox' with 'mammal'
>> 'cat dog bee parrot fox'.gsub(/cat|dog|fox/, 'mammal')
=> "mammal mammal bee parrot mammal"
```

## Regexp.union method

You might infer from the above examples that there can be cases where many alternations are required. The `Regexp.union` method can be used to build the alternation list automatically. It accepts an array as an argument or a list of comma separated arguments.

```ruby
>> Regexp.union('car', 'jeep')
=> /car|jeep/

>> words = %w[cat dog fox]
>> pat = Regexp.union(words)
>> pat
=> /cat|dog|fox/
>> 'cat dog bee parrot fox'.gsub(pat, 'mammal')
=> "mammal mammal bee parrot mammal"
```

In the above examples, the elements do not contain any special regexp characters. Handling strings that contain metacharacters will be discussed in the [Regexp.escape method](#regexpescape-method) section.

## Grouping

Often, there are some common portions among the regexp alternatives. It could be common characters, qualifiers like the anchors and so on. In such cases, you can group them using a pair of parentheses metacharacters. Similar to `a(b+c)d = abd+acd` in maths, you get `a(b|c)d = abd|acd` in regular expressions.

```ruby
# without grouping
>> 'red reform read arrest'.gsub(/reform|rest/, 'X')
=> "red X read arX"
# with grouping
>> 'red reform read arrest'.gsub(/re(form|st)/, 'X')
=> "red X read arX"

# without grouping
>> 'par spare part party'.gsub(/\bpar\b|\bpart\b/, 'X')
=> "X spare X party"
# taking out common anchors
>> 'par spare part party'.gsub(/\b(par|part)\b/, 'X')
=> "X spare X party"
# taking out common characters as well
# you'll later learn a better technique instead of using empty alternates
>> 'par spare part party'.gsub(/\bpar(|t)\b/, 'X')
=> "X spare X party"
```

>![info](images/info.svg) There are many more uses for grouping than just forming a terser regexp. They will be discussed as they become relevant in the coming chapters.

## Regexp.source method

The `Regexp.source` method helps to interpolate a regexp literal inside another regexp. For example, adding anchors to an alternation list created using the `Regexp.union` method.

```ruby
>> words = %w[cat par]
>> alt = Regexp.union(words)
>> alt
=> /cat|par/
>> alt_w = /\b(#{alt.source})\b/
>> alt_w
=> /\b(cat|par)\b/

>> 'cater cat concatenate par spare'.gsub(alt, 'X')
=> "Xer X conXenate X sXe"
>> 'cater cat concatenate par spare'.gsub(alt_w, 'X')
=> "cater X concatenate X spare"
```

>![info](images/info.svg) The above example will work without the `Regexp.source` method too, but you'll see that `/\b(#{alt})\b/` gives `/\b((?-mix:cat|par))\b/` instead of `/\b(cat|par)\b/`. Their meaning will be explained in the [Modifiers](#modifiers) chapter.

## Precedence rules

There are tricky situations when using alternation. There is no ambiguity if it is used to get a boolean result by testing a match against a string input. However, for cases like string replacement, it depends on a few factors. Say, you want to replace either `are` or `spared` — which one should get precedence? The bigger word `spared` or the substring `are` inside it or based on something else?

In Ruby, the alternative which matches earliest in the input string gets precedence. The regexp operator `=~` is handy to illustrate this concept.

```ruby
>> words = 'lion elephant are rope not'

>> words =~ /on/
=> 2
>> words =~ /ant/
=> 10

# starting index of 'on' < index of 'ant' for the given string input
# so 'on' will be replaced irrespective of the order
>> words.sub(/on|ant/, 'X')
=> "liX elephant are rope not"
>> words.sub(/ant|on/, 'X')
=> "liX elephant are rope not"
```

What happens if alternatives have the same starting index? The precedence is left-to-right in the order of declaration.

```ruby
>> mood = 'best years'

>> mood =~ /year/
=> 5
>> mood =~ /years/
=> 5

# starting index for 'year' and 'years' will always be the same
# so, which one gets replaced depends on the order of alternation
>> mood.sub(/year|years/, 'X')
=> "best Xs"
>> mood.sub(/years|year/, 'X')
=> "best X"
```

Another example with `gsub` to drive home the issue:

```ruby
>> words = 'ear xerox at mare part learn eye'

# same as: gsub(/ar/, 'X')
>> words.gsub(/ar|are|art/, 'X')
=> "eX xerox at mXe pXt leXn eye"

# same as: gsub(/are|ar/, 'X')
>> words.gsub(/are|ar|art/, 'X')
=> "eX xerox at mX pXt leXn eye"

# phew, finally this one works as needed
>> words.gsub(/are|art|ar/, 'X')
=> "eX xerox at mX pX leXn eye"
```

If you do not want substrings to sabotage your replacements, a robust workaround is to sort the alternations based on length, longest first.

```ruby
>> words = %w[hand handy handful]

>> alt = Regexp.union(words.sort_by { |w| -w.length })
>> alt
=> /handful|handy|hand/

>> 'hands handful handed handy'.gsub(alt, 'X')
=> "Xs X Xed X"

# alternation order will come into play if you don't sort them properly
>> 'hands handful handed handy'.gsub(Regexp.union(words), 'X')
=> "Xs Xful Xed Xy"
```

## Cheatsheet and Summary

| Note    | Description |
| ------- | ----------- |
| `\|` | helps to combine multiple patterns as conditional OR |
|   | each alternative can have independent anchors  |
| `Regexp.union(array)` | programmatically combine multiple strings/regexps  |
| `()` | group pattern(s) |
| `a(b\|c)d` | same as `abd\|acd` |
| `/#{pat.source}/` | interpolate a regexp literal inside another regexp |
| Alternation precedence | pattern which matches earliest in the input gets precedence |
|   | tie-breaker is left-to-right if patterns have the same starting location |
|   | robust solution: sort the alternations based on length, longest first |
|   | for ex: `Regexp.union(words.sort_by { \|w\| -w.length })` |

So, this chapter was about specifying one or more alternate matches within the same regexp using the `|` metacharacter. Which can further be simplified using `()` grouping if the alternations have common portions. Among the alternations, earliest matching pattern gets precedence. Left-to-right ordering is used as a tie-breaker if multiple alternations have the same starting location. You also learnt couple of `Regexp` methods that help to programmatically construct a regexp literal.

## Exercises

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

# Escaping metacharacters

This chapter will show how to match metacharacters literally. Examples will be discussed for both manually as well as programmatically constructed patterns. You'll also learn about escape sequences supported by regexp and how they differ from strings.

## Escaping with backslash

You have seen a few metacharacters and escape sequences for composing regexp literals. To match the metacharacters literally, i.e. to remove their special meaning, prefix those characters with a `\` (backslash) character. To indicate a literal `\` character, use `\\`.

To spice up the examples a bit, block form has been used below to modify the matched portion of string with an expression. In later chapters, you'll see more ways to work directly with the matched portions.

```ruby
# even though ^ is not being used as anchor, it won't be matched literally
>> 'a^2 + b^2 - C*3'.match?(/b^2/)
=> false
# escaping will work
>> 'a^2 + b^2 - C*3'.gsub(/(a|b)\^2/) { _1.upcase }
=> "A^2 + B^2 - C*3"

# match ( or ) literally
>> '(a*b) + c'.gsub(/\(|\)/, '')
=> "a*b + c"

>> '\learn\by\example'.gsub(/\\/, '/')
=> "/learn/by/example"
```

As emphasized earlier, regular expressions is just another tool to process text. Some examples and exercises presented in this book can be solved using normal string methods as well. It is a good practice to reason out whether regular expressions is needed for a given problem.

```ruby
>> eqn = 'f*(a^b) - 3*(a^b)'

# straightforward search and replace, no need regexp shenanigans
>> eqn.gsub('(a^b)', 'c')
=> "f*c - 3*c"
```

## Regexp.escape method

How to escape all the metacharacters when a regexp is constructed dynamically? Relax, the `Regexp.escape` method has got you covered. No need to manually take care of all the metacharacters or worry about changes in future versions.

```ruby
>> eqn = 'f*(a^b) - 3*(a^b)'
>> expr = '(a^b)'

>> puts Regexp.escape(expr)
\(a\^b\)

# replace only at the end of string
>> eqn.sub(/#{Regexp.escape(expr)}\z/, 'c')
=> "f*(a^b) - 3*c"
```

The `Regexp.union` method automatically applies escaping for string arguments.

```ruby
# array of strings, assume alternation precedence sorting isn't needed
>> terms = %w[a_42 (a^b) 2|3]

>> pat = Regexp.union(terms)
>> pat
=> /a_42|\(a\^b\)|2\|3/

>> 'ba_423 (a^b)c 2|3 a^b'.gsub(pat, 'X')
=> "bX3 Xc X a^b"
```

`Regexp.union` will also take care of mixing string and regexp patterns correctly. The grouping `(?-mix:` seen in the output below will be explained in the [Modifiers](#modifiers) chapter.

```ruby
>> Regexp.union(/^cat|dog$/, 'a^b')
=> /(?-mix:^cat|dog$)|a\^b/
```

## Escaping delimiter

Another character to keep track for escaping is the delimiter used to define the regexp literal. You can also use a different delimiter with `%r` to avoid or minimize escaping. You need not worry about unescaped delimiters inside `#{}` interpolation.

```ruby
>> path = '/home/joe/report/sales/ip.txt'

# \/ is known as 'leaning toothpick syndrome'
>> path.sub(/\A\/home\/joe\//, '~/')
=> "~/report/sales/ip.txt"

# a different delimiter improves readability and reduces typos
>> path.sub(%r#\A/home/joe/#, '~/')
=> "~/report/sales/ip.txt"
```

## Escape sequences

In regexp literals, characters like tab and newline can be expressed using escape sequences as `\t` and `\n` respectively. These are similar to how they are treated in normal string literals (see [ruby-doc: Strings](https://ruby-doc.org/3.3.0/syntax/literals_rdoc.html#label-String+Literals) for details). However, escapes like `\b` (word boundary) and `\s` (see the [Escape sequence sets](#escape-sequence-sets) section) are different for regexps. Also, octal escapes `\nnn` have to be three digits to avoid conflict with [Backreferences](#backreferences).

```ruby
>> "a\tb\tc".gsub(/\t/, ':')
=> "a:b:c"

>> "1\n2\n3".gsub(/\n/, ' ')
=> "1 2 3"
```

>![warning](images/warning.svg) If an escape sequence is not defined, it'll match the character that is escaped. For example, `\%` will match `%` and not `\` followed by `%`.
> 
> ```ruby
> >> 'h%x'.match?(/h\%x/)
> => true
> >> 'h\%x'.match?(/h\%x/)
> => false
> 
> >> 'hello'.match?(/\l/)
> => true
> ```

If you represent a metacharacter using escapes, it will be treated literally instead of its metacharacter feature.

```ruby
# \x20 is space character in hexadecimal format
>> 'h e l l o'.gsub(/\x20/, '')
=> "hello"
# \053 is + character in octal format
>> 'a+b'.match?(/a\053b/)
=> true

# \x7c is '|' character
>> '12|30'.gsub(/2\x7c3/, '5')
=> "150"
>> '12|30'.gsub(/2|3/, '5')
=> "15|50"
```

>![info](images/info.svg) See [ASCII code table](https://ascii.cl/) for a handy cheatsheet with all the ASCII characters and their hexadecimal representations.

The [Codepoints and Unicode escapes](#codepoints-and-unicode-escapes) section will discuss escapes for unicode characters.

## Cheatsheet and Summary

| Note    | Description |
| ------- | ----------- |
| `\` | prefix metacharacters with `\` to match them literally |
| `\\` | to match `\` literally |
| `Regexp.escape(s)` | automatically escape all metacharacters for string `s` |
| | `Regexp.union` also automatically escapes string arguments |
| `%r` | helps to avoid/reduce escaping the delimiter character |
| `\t` | escape sequences like those supported in string literals |
| | but escapes like `\b` and `\s` have different meaning in regexps |
| `\%` | undefined escapes will match the character it escapes |
| `\x7c` | will match `\|` literally |
| | instead of acting as an alternation metacharacter |

## Exercises

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

# Dot metacharacter and Quantifiers

This chapter introduces the dot metacharacter and metacharacters related to quantifiers. As the name implies, quantifiers allows you to specify how many times a character or grouping should be matched. With the `*` string operator, you can do something like `'no' * 5` to get `'nonononono'`. This saves you manual repetition as well as gives the ability to programmatically repeat a string object as many times as you need. Quantifiers support this simple repetition as well as ways to specify a range of repetition. This range has the flexibility of being bounded or unbounded with respect to the start and end values. Combined with the dot metacharacter (and alternation if needed), quantifiers allow you to construct conditional AND logic between patterns.

## Dot metacharacter

The dot metacharacter serves as a placeholder to match any character except the newline character.

```ruby
# matches character 'c', any character and then character 't'
>> 'tac tin c.t abc;tuv acute'.gsub(/c.t/, 'X')
=> "taXin X abXuv aXe"

# matches character 'r', any two characters and then character 'd'
>> 'breadth markedly reported overrides'.gsub(/r..d/) { _1.upcase }
=> "bREADth maRKEDly repoRTED oveRRIDes"

# matches character '2', any character and then character '3'
>> "42\t35".sub(/2.3/, '8')
=> "485"

# by default, the dot metacharacter doesn't match the newline character
>> "a\nb".match?(/a.b/)
=> false
```

See the [m modifier](#m-modifier) section to know how the `.` metacharacter can match newlines as well. The [Character class](#character-class) chapter will discuss how to define your own custom placeholder for limited set of characters.

## split method

This chapter will additionally use the `split` method to illustrate examples. The `split` method separates the string based on a given regexp (or string) and returns an array of strings.

```ruby
# same as: 'apple-85-mango-70'.split('-')
>> 'apple-85-mango-70'.split(/-/)
=> ["apple", "85", "mango", "70"]

>> 'bus:3:car:-:van'.split(/:.:/)
=> ["bus", "car", "van"]

# optional limit can be specified as the second argument
# when the limit is positive, you get a maximum of limit-1 splits
>> 'apple-85-mango-70'.split(/-/, 2)
=> ["apple", "85-mango-70"]
```

See the [split with capture groups](#split-with-capture-groups) section for details of how capture groups affect the output of the `split` method.

## Greedy quantifiers

Quantifiers have functionality like the string repetition operator and the range method. They can be applied to characters and groupings (and more, as you'll see in later chapters). Apart from the ability to specify exact quantity and bounded range, these can also match unbounded varying quantities. If the input string can satisfy a pattern with varying quantities in multiple ways, you can choose among three types of quantifiers to narrow down possibilities. In this section, **greedy** type of quantifiers is covered.

First up, the `?` metacharacter which quantifies a character or group to match `0` or `1` times. In other words, you make that character or group as something to be optionally matched. This leads to a terser regexp compared to alternation and grouping.

```ruby
# same as: /ear|ar/
>> 'far feat flare fear'.gsub(/e?ar/, 'X')
=> "fX feat flXe fX"

# same as: /\bpar(t|)\b/
>> 'par spare part party'.gsub(/\bpart?\b/, 'X')
=> "X spare X party"

# same as: /\b(re.d|red)\b/
>> words = %w[red read ready re;d road redo reed rod]
>> words.grep(/\bre.?d\b/)
=> ["red", "read", "re;d", "reed"]

# same as: /part|parrot/
>> 'par part parrot parent'.gsub(/par(ro)?t/, 'X')
=> "par X X parent"
# same as: /part|parrot|parent/
>> 'par part parrot parent'.gsub(/par(en|ro)?t/, 'X')
=> "par X X X"
```

The `*` metacharacter quantifies a character or group to match `0` or more times.

```ruby
# match 't' followed by zero or more of 'a' followed by 'r'
>> 'tr tear tare steer sitaara'.gsub(/ta*r/, 'X')
=> "X tear Xe steer siXa"
# match 't' followed by zero or more of 'e' or 'a' followed by 'r'
>> 'tr tear tare steer sitaara'.gsub(/t(e|a)*r/, 'X')
=> "X X Xe sX siXa"

# match zero or more of '1' followed by '2'
>> '3111111111125111142'.gsub(/1*2/, 'X')
=> "3X511114X"
```

Here are some examples with `split` and related methods. The `partition` method splits the input string on the first match and the text matched by the regexp is also present in the output. `rpartition` is like `partition` but splits on the last match.

```ruby
# note how '25' and '42' gets split, there is '1' zero times in between them
>> '3111111111125111142'.split(/1*/)
=> ["3", "2", "5", "4", "2"]
# there is '1' zero times at end of string as well, note the use of -1 for limit
>> '3111111111125111142'.split(/1*/, -1)
=> ["3", "2", "5", "4", "2", ""]

>> '3111111111125111142'.partition(/1*2/)
=> ["3", "11111111112", "5111142"]
# last element is empty because there is nothing after 2 at the end of string
>> '3111111111125111142'.rpartition(/1*2/)
=> ["311111111112511114", "2", ""]
```

The `+` metacharacter quantifies a character or group to match `1` or more times. Similar to the `*` quantifier, there is no upper bound. More importantly, this doesn't have surprises like matching an empty string at unexpected places.

```ruby
>> 'tr tear tare steer sitaara'.gsub(/ta+r/, 'X')
=> "tr tear Xe steer siXa"
>> 'tr tear tare steer sitaara'.gsub(/t(e|a)+r/, 'X')
=> "tr X Xe sX siXa"

>> '3111111111125111142'.gsub(/1+2/, 'X')
=> "3X5111142"
>> '3111111111125111142'.split(/1+/)
=> ["3", "25", "42"]
```

You can specify a range of integer numbers, both bounded and unbounded, using the `{}` metacharacters. There are four ways to use this quantifier as shown below:

| Pattern | Description |
| ------- | ----------- |
| `{m,n}` | match `m` to `n` times |
| `{m,}`  | match at least `m` times |
| `{,n}`  | match up to `n` times (including `0` times) |
| `{n}`   | match exactly `n` times |

```ruby
>> repeats = %w[abc ac adc abbc xabbbcz bbb bc abbbbbc]

>> repeats.grep(/ab{1,4}c/)
=> ["abc", "abbc", "xabbbcz"]
>> repeats.grep(/ab{3,}c/)
=> ["xabbbcz", "abbbbbc"]
>> repeats.grep(/ab{,2}c/)
=> ["abc", "ac", "abbc"]
>> repeats.grep(/ab{3}c/)
=> ["xabbbcz"]
```

>![info](images/info.svg) The `{}` metacharacters have to be escaped to match them literally. However, unlike the `()` metacharacters, these have more leeway. For example, escaping `{` alone is enough, or if it doesn't conform strictly to any of the four forms listed above, escaping is not needed at all. Also, if you are applying the `{}` quantifier to the `#` character, you need to escape `#` to override interpolation.
> 
> ```ruby
> >> 'a{5} = 10'.sub(/a\{5}/, 'a{6}')
> => "a{6} = 10"
> 
> >> 'report_{a,b}.txt'.sub(/_{a,b}/, '-{c,d}')
> => "report-{c,d}.txt"
> 
> >> '# heading ### sub-heading'.gsub(/\#{2,}/, '%')
> => "# heading % sub-heading"
> ```

## Conditional AND

Next up, how to construct AND conditional using the dot metacharacter and quantifiers.

```ruby
# match 'Error' followed by zero or more characters followed by 'valid'
>> 'Error: not a valid input'.match?(/Error.*valid/)
=> true

>> 'Error: key not found'.match?(/Error.*valid/)
=> false
```

To allow matching in any order, you'll have to bring in alternation as well. That is somewhat manageable for 2 or 3 patterns. See the [Conditional AND with lookarounds](#conditional-and-with-lookarounds) section for an easier approach.

```ruby
>> seq1, seq2 = ['cat and dog', 'dog and cat']
>> seq1.match?(/cat.*dog|dog.*cat/)
=> true
>> seq2.match?(/cat.*dog|dog.*cat/)
=> true

# if you just need true/false result, this would be a scalable approach
>> patterns = [/cat/, /dog/]
>> patterns.all? { seq1.match?(_1) }
=> true
>> patterns.all? { seq2.match?(_1) }
=> true
```

## What does greedy mean?

When you use the `?` quantifier, how does Ruby decide to match `0` or `1` times, if both quantities can satisfy the regexp?  For example, consider this substitution expression `'foot'.sub(/f.?o/, 'X')` — should `foo` be replaced or `fo`? It will always replace `foo` because these are **greedy** quantifiers, meaning they try to match as much as possible.

```ruby
>> 'foot'.sub(/f.?o/, 'X')
=> "Xt"

# a more practical example
# prefix '<' with '\' if it is not already prefixed
# both '<' and '\<' will get replaced with '\<'
>> puts 'blah \< fig < apple \< blah < cat'.gsub(/\\?</, '\<')
blah \< fig \< apple \< blah \< cat

# say goodbye to /handful|handy|hand/ shenanigans
>> 'hand handy handful'.gsub(/hand(y|ful)?/, 'X')
=> "X X X"
```

But wait, then how did the `/Error.*valid/` example work? Shouldn't `.*` consume all the characters after `Error`? Good question. The regular expression engine actually does consume all the characters. Then realizing that the match failed, it gives back one character from the end of string and checks again if the overall regexp is satisfied. This process is repeated until a match is found or failure is confirmed. In regular expression parlance, this is known as **backtracking**.

```ruby
>> sentence = 'that is quite a fabricated tale'

# /t.*a/ will always match from the first 't' to the last 'a'
# which implies that there cannot be more than one match for such patterns
>> sentence.sub(/t.*a/, 'X')
=> "Xle"
>> 'star'.sub(/t.*a/, 'X')
=> "sXr"

# matching first 't' to last 'a' for t.*a won't work for these cases
# so, the engine backtracks until the overall regexp can be matched
>> sentence.sub(/t.*a.*q.*f/, 'X')
=> "Xabricated tale"
>> sentence.sub(/t.*a.*u/, 'X')
=> "Xite a fabricated tale"
```

## Non-greedy quantifiers

As the name implies, these quantifiers will try to match as minimally as possible. Also known as **lazy** or **reluctant** quantifiers. Appending a `?` to greedy quantifiers makes them non-greedy.

```ruby
>> 'foot'.sub(/f.??o/, 'X')
=> "Xot"
>> 'frost'.sub(/f.??o/, 'X')
=> "Xst"

>> '123456789'.sub(/.{2,5}?/, 'X')
=> "X3456789"
```

Like greedy quantifiers, lazy quantifiers will try to satisfy the overall regexp. For example, `.*?` will first start with an empty match and then move forward one character at a time until a match is found.

```ruby
# /:.*:/ will match from the first ':' to the last ':'
>> 'green:3.14:teal::brown:oh!:blue'.split(/:.*:/)
=> ["green", "blue"]

# /:.*?:/ will match from ':' to the very next ':'
>> 'green:3.14:teal::brown:oh!:blue'.split(/:.*?:/)
=> ["green", "teal", "brown", "blue"]
```

## Possessive quantifiers

The difference between greedy and possessive quantifiers is that possessive will not backtrack to find a match. In other words, possessive quantifiers will always consume every character that matches the pattern on which it is applied. Syntax wise, you need to append `+` to greedy quantifiers to make it possessive, similar to adding `?` for the non-greedy case.

Unlike greedy and non-greedy quantifiers, a pattern like `:.*+apple` will never result in a match because `.*+` will consume rest of the line, leaving no way to match `apple`.

```ruby
>> ip = 'fig:mango:pineapple:guava:apples:orange'

>> ip.gsub(/:.*+/, 'X')
=> "figX"

>> ip.match?(/:.*+apple/)
=> false
```

Here's a more practical example. Suppose you want to match integer numbers greater than or equal to `100` where these numbers can optionally have leading zeros. This illustration will use features yet to introduced. The [scan method](#scan-method) returns all the matched portions as an array. The pattern `[1-9]` matches any of the digits from `1` to `9` and `\d` matches digits `0` to `9`. See the [Character class](#character-class) chapter for more details and the [Escape sequence sets](#escape-sequence-sets) section for another practical example.

```ruby
>> numbers = '42 314 001 12 00984'

# this solution fails because 0* and \d{3,} can both match leading zeros
# and greedy quantifiers give up characters to help the overall regexp succeed
>> numbers.scan(/0*\d{3,}/)
=> ["314", "001", "00984"]

# here 0*+ will never give back leading zeros
>> numbers.scan(/0*+\d{3,}/)
=> ["314", "00984"]

# workaround with just greedy quantifiers
>> numbers.scan(/0*[1-9]\d{2,}/)
=> ["314", "00984"]
```

## Atomic grouping

`(?>pat)` is an atomic group, where `pat` is the pattern you want to safeguard from further backtracking. You can think of it as a special group that is isolated from the other parts of the regular expression.

Here's an example with greedy quantifier:

```ruby
>> numbers = '42 314 001 12 00984'

# 0* is greedy and the (?>) grouping prevents backtracking
# same as: numbers.scan(/0*+\d{3,}/)
>> numbers.scan(/(?>0*)\d{3,}/)
=> ["314", "00984"]
```

Here's an example with non-greedy quantifier. The [match method](#match-method-1) is used here to extract only the matching portion.

```ruby
>> ip = 'fig::mango::pineapple::guava::apples::orange'

# this matches from the first '::' to the first occurrence of '::apple'
>> ip.match(/::.*?::apple/)[0]
=> "::mango::pineapple::guava::apple"

# '(?>::.*?::)' will match only from '::' to the very next '::'
# '::mango::' fails because 'apple' isn't found afterwards
# similarly '::pineapple::' fails
# '::guava::' succeeds because it is followed by 'apple'
>> ip.match(/(?>::.*?::)apple/)[0]
=> "::guava::apple"
```

## Catastrophic Backtracking

Backtracking can become significantly time consuming for certain corner cases. Which is why some regular expression engines do not use them, at the cost of not supporting some features like lookarounds. If your application accepts user defined regexp, you might need to protect against such catastrophic patterns. From [wikipedia: ReDoS](https://en.wikipedia.org/wiki/Redos):

>A regular expression denial of service (ReDoS) is an algorithmic complexity attack that produces a denial-of-service by providing a regular expression and/or an input that takes a long time to evaluate. The attack exploits the fact that many regular expression implementations have super-linear worst-case complexity; on certain regex-input pairs, the time taken can grow polynomially or exponentially in relation to the input size. An attacker can thus cause a program to spend substantial time by providing a specially crafted regular expression and/or input. The program will then slow down or becoming unresponsive.

Ruby can apply an optimization to prevent ReDoS attacks for certain cases. See [ruby-doc: Regexp Optimization](https://ruby-doc.org/3.3.0/Regexp.html#class-Regexp-label-Optimization) for details. Another option is to set a timeout limit, either globally via `Regexp.timeout` or by setting the `timeout` keyword argument via `Regexp.new`. See [ruby-doc: Timeouts](https://ruby-doc.org/3.3.0/Regexp.html#class-Regexp-label-Timeouts) for details. These features were introduced in Ruby 3.2 version, see [release notes](https://www.ruby-lang.org/en/news/2022/12/25/ruby-3-2-0-released/) for details and links to proposals.

More examples and mitigation strategies can be found in the following links:

* [The Explosive Quantifier Trap](https://www.rexegg.com/regex-explosive-quantifiers.html)
* [Runaway Regular Expressions: Catastrophic Backtracking](https://www.regular-expressions.info/catastrophic.html)
* [Details of the Cloudflare outage on July 2, 2019](https://blog.cloudflare.com/details-of-the-cloudflare-outage-on-july-2-2019/)

## Cheatsheet and Summary

| Note    | Description |
| ------- | ----------- |
| `.` | match any character except the newline character |
| greedy | match as much as possible |
| `?` | greedy quantifier, match `0` or `1` times |
| `*` | greedy quantifier, match `0` or more times |
| `+` | greedy quantifier, match `1` or more times |
| `{m,n}` | greedy quantifier, match `m` to `n` times |
| `{m,}`  | greedy quantifier, match at least `m` times |
| `{,n}`  | greedy quantifier, match up to `n` times (including `0` times) |
| `{n}`   | greedy quantifier, match exactly `n` times |
| `pat1.*pat2` | any number of characters between `pat1` and `pat2` |
| `pat1.*pat2\|pat2.*pat1` | match both `pat1` and `pat2` in any order |
| non-greedy | append `?` to greedy quantifiers |
| | match as minimally as possible |
| possessive | append `+` to greedy quantifiers |
| | like greedy, but no backtracking |
| `(?>pat)` | atomic grouping, isolates `pat` from rest of the regexp |
| `s.split(/pat/)` | split a string based on `pat` |
| | accepts an optional limit argument to control no. of splits |
| `s.partition(/pat/)` | returns array of 3 elements based on the first match |
| | portion before match, matched portion, portion after match |
| `s.rpartition(/pat/)` | returns array of 3 elements based on the last match |

This chapter introduced the concept of specifying a placeholder instead of fixed strings. When combined with quantifiers, you've seen a glimpse of how a simple regexp can match wide ranges of text. In the coming chapters, you'll learn how to create your own restricted set of placeholder characters.

## Exercises

>![info](images/info.svg) Since the `.` metacharacter doesn't match newline characters by default, assume that the input strings in the following exercises will not contain newline characters.

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

# Interlude: Tools for debugging and visualization

As your regexp gets complicated, it can get difficult to debug when you run into issues. Building your regexp step-by-step from scratch and testing against input strings will go a long way in correcting the problem. To aid in such a process, you could use [various online tools](https://news.ycombinator.com/item?id=20614847).

## rubular

[rubular](https://rubular.com/) is an online Ruby regular expression editor (based on Ruby 2.5.9) to visually test your regexp. You need to add your regexp, input string and optional modifiers. Matching portions will be highlighted.

The below image is a screenshot from this link — [rubular: `/ab{0,2}c/`](https://rubular.com/r/TkZiW5fx8WucUS)

![rubular example](images/rubular.png)

>![info](images/info.svg) [regex101](https://regex101.com/) and [regexr](https://regexr.com/) are similar sites with more features, but they do not support Ruby flavor. They both have JavaScript flavor, which is the closest option to Ruby.

## debuggex

Another useful tool is [debuggex](https://www.debuggex.com/) which converts your regexp to a railroad diagram, thus providing a visual aid to understanding the pattern. This doesn't support Ruby, so select the JavaScript flavor.

The below image is a screenshot from this link — [debuggex: `/\bpar(en|ro)?t\b/`](https://www.debuggex.com/r/YvhfAn46M4G3_C0i)

![debuggex example](images/debuggex.png)

## regexcrossword

For practice, [regexcrossword](https://regexcrossword.com/) is often recommended. It only supports JavaScript, so some of the puzzles may not work the same compared to Ruby's flavor. See [regexcrossword: howtoplay](https://regexcrossword.com/howtoplay) for help.

## Summary

This chapter briefly presented tools that can help you with understanding and interactively solving/debugging regular expressions. Syntax and features can vary, sometimes significantly, between various tools and programming languages. So, ensure that the program you are using supports the flavor of regular expressions you are using.

# Working with matched portions

You have already seen a few features that can match varying text. In this chapter, you'll learn how to extract and work with those matching portions. First, you'll learn about the `match` method and the resulting `MatchData` object. Then you'll learn to use the `scan` method to get all the matches instead of just the first match. You'll also see how capture groups affects the `scan` and `split` methods and how to use global variables related to regexp.

## match method

First up, the `match` method which is similar to the `match?` method. Both these methods accept a regexp and an optional index to indicate the starting location. Furthermore, these methods treat a string argument as if it was a regexp all along (which is not the case with other string methods like `sub`, `split`, etc). The `match` method returns a `MatchData` object from which various details can be extracted like the matched portion of string, location of the matched portion, etc. `nil` is returned if there's no match for the given regexp.

```ruby
# only the first matching portion is considered
>> 'too soon a song snatch'.match(/so+n/)
=> #<MatchData "soon">
# string argument is treated the same as a regexp
>> 'too soon a song snatch'.match('a.*g')
=> #<MatchData "a song">

# second argument specifies the starting location to search for a match
>> 'too soon a song snatch'.match(/so+n/, 7)
=> #<MatchData "son">
```

The `()` grouping is also known as a **capture group**. It has multiple uses, one of which is the ability to work with matched portions of those groups. When capture groups are used with the `match` method, they can be retrieved using array index slicing on the `MatchData` object. The first element is always the entire matched portion and rest of the elements are for capture groups if they are present. The leftmost `(` will get group number `1`, second leftmost `(` will get group number `2` and so on.

```ruby
# retrieving the entire matched portion using index 0
>> 'too soon a song snatch'.match(/on.*g/)[0]
=> "on a song"

# capture group example
>> purchase = 'coffee:100g tea:250g sugar:75g chocolate:50g'
>> m = purchase.match(/:(.*?)g.*?:(.*?)g.*?chocolate:(.*?)g/)
# entire matching portion and capture group portions
>> m.to_a
=> [":100g tea:250g sugar:75g chocolate:50g", "100", "250", "50"]
# only the capture group portions
>> m.captures
=> ["100", "250", "50"]
# getting a specific capture group portion
>> m[1]
=> "100"
```

The `offset` method gives the **starting** and **ending + 1** indexes of the matching portion. It accepts an argument to indicate the entire matching portion or a specific capture group. You can also use the `begin` and `end` methods to get either of those locations.

```ruby
>> m = 'awesome'.match(/w(.*)me/)

>> m.offset(0)
=> [1, 7]
>> m.offset(1)
=> [2, 5]

>> m.begin(0)
=> 1
>> m.end(1)
=> 5
```

>![info](images/info.svg) There are many more methods available. See [ruby-doc: MatchData](https://ruby-doc.org/3.3.0/MatchData.html) for details.
> 
> ```ruby
> >> m = 'THIS is goodbye then'.match(/hi.*bye/i)
> 
> >> m.regexp
> => /hi.*bye/i
> >> m.string
> => "THIS is goodbye then"
> ```

The `named_captures` method will be covered in the [Named capture groups](#named-capture-groups) section.

## match method with block

The `match` method also supports the block form, which is executed only if the regexp matching succeeds.

```ruby
>> 'THIS is goodbye then'.match(/T(.*S).*(g.*?e)/) { |m| puts m[2], m[1] }
goodbye
HIS

>> 'apple mango'.match(/xyz/) { puts 2 * 3 }
=> nil
```

## Using regexp as a string index

If you are a fan of code golfing, you can use a regexp inside `[]` on a string object to replicate some features of the `match` and `sub!` methods.

```ruby
# same as: match(/so+n/)[0]
>> 'too soon a song snatch'[/so+n/]
=> "soon"

# same as: match(/(t.*?s).*(s.*g)/)[2]
>> 'too soon a song snatch'[/(t.*?s).*(s.*g)/, 2]
=> "song"

# same as:match(/so+n/, 7)[0]
>> 'too soon a song snatch'[7..][/so+n/]
=> "son"

>> word = 'elephant'
# same as: word.sub!(/e.*h/, 'w')
>> word[/e.*h/] = 'w'
=> "w"
>> word
=> "want"
```

## scan method

The `scan` method returns all the matched portions as an array. With the `match` method you can get only the first matching portion.

```ruby
>> 'too soon a song snatch'.scan(/so*n/)
=> ["soon", "son", "sn"]

>> 'too soon a song snatch'.scan(/so+n/)
=> ["soon", "son"]

>> s = 'PAR spar apparent SpArE part pare'
>> s.scan(/\bs?pare?\b/i)
=> ["PAR", "spar", "SpArE", "pare"]
```

It is a useful method for debugging purposes as well, for example to see what is going on under the hood before applying substitution methods.

```ruby
>> s = 'green:3.14:teal::brown:oh!:blue'

>> s.scan(/:.*:/)
=> [":3.14:teal::brown:oh!:"]

>> s.scan(/:.*?:/)
=> [":3.14:", "::", ":oh!:"]

>> s.scan(/:.*+:/)
=> []
```

If capture groups are used, each element of the output will be an array of strings of all the capture groups. Text matched by regexp outside of capture groups won't be present in the output array. Also, you'll get an empty string if a particular capture group didn't match any character. See the [Non-capturing groups](#non-capturing-groups) section if you need to use groupings without affecting the `scan` output.


```ruby
>> purchase = 'coffee:100g tea:250g sugar:75g chocolate:50g'
# without capture groups
>> purchase.scan(/:.*?g/)
=> [":100g", ":250g", ":75g", ":50g"]
# with a single capture group
>> purchase.scan(/:(.*?)g/)
=> [["100"], ["250"], ["75"], ["50"]]

# multiple capture groups
# note that the last date didn't match because there's no comma at the end
# you'll later learn better ways to match such patterns
>> '2023/04/25,1986/Mar/02,77/12/31'.scan(%r{(.*?)/(.*?)/(.*?),})
=> [["2023", "04", "25"], ["1986", "Mar", "02"]]
```

Use block form to iterate over the matched portions.

```ruby
>> 'too soon a song snatch'.scan(/so+n/) { puts _1.upcase }
SOON
SON

>> 'xx:yyy x: x:yy :y'.scan(/(x*):(y*)/) { puts _1.size + _2.size }
5
1
3
1
```

## split with capture groups

Capture groups affects the `split` method as well. If the regexp used to split contains capture groups, the portions matched by those groups will also be a part of the output array.

```ruby
# without capture groups
>> '31111111111251111426'.split(/1*4?2/)
=> ["3", "5", "6"]

# to include the matching portions of the regexp as well in the output
>> '31111111111251111426'.split(/(1*4?2)/)
=> ["3", "11111111112", "5", "111142", "6"]
```

If part of the regexp is outside a capture group, the text thus matched won't be in the output. If a capture group didn't participate, that element will be totally absent in the output.

```ruby
# here 4?2 is outside capture group, so that portion won't be in output
>> '31111111111251111426'.split(/(1*)4?2/)
=> ["3", "1111111111", "5", "1111", "6"]

# multiple capture groups example
# note that the portion matched by b+ isn't present in the output
>> '3.14aabccc42'.split(/(a+)b+(c+)/)
=> ["3.14", "aa", "ccc", "42"]

# here (4)? matches zero times on the first occasion, thus absent
>> '31111111111251111426'.split(/(1*)(4)?2/)
=> ["3", "1111111111", "5", "1111", "4", "6"]
```

Use of capture groups and optional limit as 2 gives behavior similar to the `partition` method.

```ruby
# same as: partition(/a+b+c+/)
>> '3.14aabccc42abc88'.split(/(a+b+c+)/, 2)
=> ["3.14", "aabccc", "42abc88"]
```

## regexp global variables

An expression involving regexp also sets regexp related global variables, except for the `match?` method. Assume `m` is a `MatchData` object in the below description of four of the regexp related global variables.

* `$~` contains `MatchData` object, same as `m`
* `` $` `` string before the matched portion, same as `m.pre_match`
* `$&` matched portion, same as `m[0]`
* `$'` string after the matched portion, same as `m.post_match`

Here's an example:

```ruby
>> sentence = 'that is quite a fabricated tale'
>> sentence =~ /q.*b/
=> 8

>> $~
=> #<MatchData "quite a fab">
>> $~[0]
=> "quite a fab"
>> $`
=> "that is "
>> $&
=> "quite a fab"
>> $'
=> "ricated tale"
```

For methods that match multiple times, like `scan` and `gsub`, the global variables will be updated for each match. Referring to them in later instructions will give you information only for the final match.

```ruby
# same as: { puts _1.upcase }
>> 'too soon a song snatch'.scan(/so+n/) { puts $&.upcase }
SOON
SON

# using 'gsub' for illustration purpose here, can also use 'scan'
>> 'too soon a song snatch'.gsub(/so+n/) { puts $~.begin(0) }
4
11

# using global variables afterwards will give info only for the final match
>> $~
=> #<MatchData "son">
>> $`
=> "too soon a "
```

>![warning](images/warning.svg) If you need to apply methods like `map` along with regexp global variables, use `gsub` instead of `scan`.
> 
> ```ruby
> >> sentence = 'that is quite a fabricated tale'
> 
> # you'll only get information for the last match with 'scan'
> >> sentence.scan(/t.*?a/).map { $~.begin(0) }
> => [23, 23, 23]
> # 'gsub' will get you information for each match
> >> sentence.gsub(/t.*?a/).map { $~.begin(0) }
> => [0, 3, 23]
> ```

In addition to using `$~`, you can also use `$N` where N is the capture group you want. `$1` will have string matched by the first group, `$2` will have string matched by the second group and so on. As a special case, `$+` will have string matched by the last group. Default value is `nil` if that particular capture group wasn't used in the regexp.

```ruby
>> sentence = 'that is quite a fabricated tale'

>> sentence =~ /a.*(q.*(f.*b).*c)(.*a)/
=> 2

>> $&
=> "at is quite a fabricated ta"
# same as $~[1]
>> $1
=> "quite a fabric"
>> $2
=> "fab"
>> $+
=> "ated ta"
>> $4
=> nil

# $~ is handy if array slicing, negative index, etc are needed
>> $~[-2]
=> "fab"
>> $~.values_at(1, 3)
=> ["quite a fabric", "ated ta"]
```

## Using hashes

With the help of block form and global variables, you can use a hash variable to determine the replacement string based on the matched text. If the requirement is as simple as passing entire matched portion to the hash variable, both `sub` and `gsub` methods accept a hash instead of string in the replacement section.

```ruby
# one to one mappings
>> h = { '1' => 'one', '2' => 'two', '4' => 'four' }

# same as: '9234012'.gsub(/1|2|4/) { h[$&] }
>> '9234012'.gsub(/1|2|4/, h)
=> "9two3four0onetwo"

# if the matched text doesn't exist as a key, the default value will be used
>> h.default = 'X'
>> '9234012'.gsub(/./, h)
=> "XtwoXfourXonetwo"
```

For swapping two or more strings without using intermediate result, using a hash object is recommended.

```ruby
>> swap = { 'cat' => 'tiger', 'tiger' => 'cat' }

>> 'cat tiger dog tiger cat'.gsub(/cat|tiger/, swap)
=> "tiger cat dog cat tiger"
```

For hashes that have many entries and likely to undergo changes during development, building alternation list manually is not a good choice. Also, recall that as per precedence rules, longest length string should come first.

```ruby
>> h = { 'hand' => 1, 'handy' => 2, 'handful' => 3, 'a^b' => 4 }

>> pat = Regexp.union(h.keys.sort_by { |w| -w.length })
>> pat
=> /handful|handy|hand|a\^b/

>> 'handful hand pin handy (a^b)'.gsub(pat, h)
=> "3 1 pin 2 (4)"
```

## Substitution in conditional expression

The `sub!` and `gsub!` methods return `nil` if the substitution fails. That makes them usable as part of a conditional expression leading to creative and terser solutions.

```ruby
# display results only if the substitution succeeds
>> num = '4'
>> puts "#{num} apples" if num.sub!(/5/) { $&.to_i ** 2 }
=> nil
>> puts "#{num} apples" if num.sub!(/4/) { $&.to_i ** 2 }
16 apples

# delete 'fin' and keep repeating the process on the modified string
# 'cnt' keeps track of number of substitutions made
>> word, cnt = ['coffining', 0]
>> cnt += 1 while word.sub!(/fin/, '')
=> nil
>> [word, cnt]
=> ["cog", 2]
```

## Cheatsheet and Summary

| Note    | Description |
| ------- | ----------- |
| `s.match(/pat/)` | returns a `MatchData` object |
| | which has details like matched portions, location, etc |
| | `match` and `match?` methods treat string argument as regexp |
| `m[0]` | entire matched portion of `MatchData` object `m` |
| `m[1]` | matched portion of the first capture group |
| `m[2]` | matched portion of the second capture group and so on |
| `m.to_a` | array of the entire matched portion and capture groups |
| `m.captures` | array of only the capture group portions |
| `m.offset(N)` | array of start and end+1 index of *N*th group |
| `m.begin(N)` | start index of *N*th group |
| `m.end(N)` | end+1 index of *N*th group |
| `s[/pat/]` | same as `s.match(/pat/)[0]` |
| `s[/pat/, N]` | same as `s.match(/pat/)[N]` |
| `s[/pat/] = 'replace'` | same as `s.sub!(/pat/, 'replace')` |
| `s.scan(/pat/)` | returns all the matches as an array |
| | if capture groups are used, only its matches are returned |
| | each element will be an array of capture group matches |
| | `match` and `scan` methods also support block form |
| `split` | capture groups affects `split` method too |
| | text matched by the groups will be part of the output |
| | portion matched by pattern outside group won't be in output |
| | group that didn't match will be absent from the output |
| `$~` | contains `MatchData` object |
| `` $` `` | string before the matched portion |
| `$&` | matched portion |
| `$'` | string after the matched portion |
| `$N` | matched portion of *N*th capture group |
| `$+` | matched portion of the last group |
| `s.gsub(/pat/, h)` | replacement string based on the matched text as hash key |
| | applicable for the `sub` method as well |
| in-place substitution | `sub!` and `gsub!` return `nil` if substitution fails |
|  | makes them usable as part of a conditional expression |
|  | ex: `cnt += 1 while word.sub!(/fin/, '')` |

This chapter introduced different ways to work with various matching portions of the input string. The `match` method returns a `MatchData` object that helps you get the portion matched by the regexp, capture groups, location of the match, etc. To get all the matching portions as an array of strings instead of just the first match, you can use the `scan` method. You also learnt how capture groups affect the output of the `scan` and `split` methods.

You'll see many more uses of groupings in the coming chapters. All regexp usage also sets global variables (except the `match?` method) which provides information similar to the `MatchData` object. You also learnt tricks like passing blocks to methods, using hash as a source of replacement string, regexp as string index, etc.

## Exercises

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

# Character class

This chapter will discuss how to create your own custom placeholders to match limited set of characters and various metacharacters applicable inside character classes. You'll also learn about escape sequences for predefined character sets.

## Custom character sets

Characters enclosed inside `[]` metacharacters is a character class (or set). It will result in matching any one of those characters once. It is similar to using single character alternations inside a grouping, but terser and without the drawbacks of a capture group. In addition, character classes have their own versions of metacharacters and provide special predefined sets for common use cases. Quantifiers are applicable to character classes as well.

```ruby
# same as: /cot|cut/ or /c(o|u)t/
>> %w[cute cat cot coat cost scuttle].grep(/c[ou]t/)
=> ["cute", "cot", "scuttle"]

# /.(a|e|o)+t/ won't work as capture group prevents getting the entire match
>> 'meeting cute boat site foot'.scan(/.[aeo]+t/)
=> ["meet", "boat", "foot"]
```

## Range of characters

Character classes have their own metacharacters to help define the sets succinctly. Metacharacters outside of character classes like `^`, `$`, `()` etc either don't have special meaning or have a completely different one inside the character classes. First up, the `-` metacharacter that helps to define a range of characters instead of having to specify them all individually.

```ruby
# all digits, same as: scan(/[0123456789]+/)
>> 'Sample123string42with777numbers'.scan(/[0-9]+/)
=> ["123", "42", "777"]

# whole words made up of lowercase alphabets and digits only
>> 'coat Bin food tar12 best Apple fig_42'.scan(/\b[a-z0-9]+\b/)
=> ["coat", "food", "tar12", "best"]

# whole words starting with 'p' to 'z' and having lowercase alphabets only
>> 'coat tin food put stoop best fig_42 Pet'.scan(/\b[p-z][a-z]*\b/)
=> ["tin", "put", "stoop"]

# whole words made up of only 'a' to 'f' and 'p' to 't' lowercase alphabets
>> 'coat tin food put stoop best fig_42 Pet'.scan(/\b[a-fp-t]+\b/)
=> ["best"]
```

## Negating character sets

Next metacharacter is `^` which has to specified as the first character of the character class. It negates the set of characters, so all characters other than those specified will be matched. As highlighted earlier, handle negative logic with care, you might end up matching more than you wanted.

```ruby
# non-digit characters
>> 'Sample123string42with777numbers'.scan(/[^0-9]+/)
=> ["Sample", "string", "with", "numbers"]

# remove the first two columns where : is delimiter
>> 'apple:123:banana:cherry'.sub(/\A([^:]+:){2}/, '')
=> "banana:cherry"

# deleting characters at the end of string based on a delimiter
>> 'apple=42; cherry=123'.sub(/=[^=]+\z/, '')
=> "apple=42; cherry"

>> dates = '2024/04/25,1986/Mar/02,77/12/31'
# note that the third character set negates comma
# and comma is matched optionally outside the capture groups
>> dates.scan(%r{([^/]+)/([^/]+)/([^/,]+),?})
=> [["2024", "04", "25"], ["1986", "Mar", "02"], ["77", "12", "31"]]
```

Sometimes, it is easier to use positive character class and invert the boolean result instead of using a negated character class.

```ruby
>> words = %w[tryst fun glyph pity why]

# words not containing vowel characters
>> words.grep(/\A[^aeiou]+\z/)
=> ["tryst", "glyph", "why"]

# easier to write and maintain
# but this'll match empty strings too unlike the previous solution
# you can add \A\z as an alternate pattern to avoid empty matches
>> words.grep_v(/[aeiou]/)
=> ["tryst", "glyph", "why"]
```

## Set intersection

Using `&&` between two sets of characters will result in matching only the intersection of those two sets. To aid in such definitions, you can use `[]` in nested fashion.

```ruby
# [^aeiou] will match any non-vowel character
# which means space is also a valid character to be matched
>> 'tryst glyph pity why'.scan(/\b[^aeiou]+\b/)
=> ["tryst glyph ", " why"]

# [a-z&&[^aeiou]] will be intersection of a-z and non-vowel characters
# this results in positive definition of characters to match
>> 'tryst glyph pity why'.scan(/\b[a-z&&[^aeiou]]+\b/)
=> ["tryst", "glyph", "why"]
```

## Matching metacharacters literally

You can prefix a `\` to metacharacters to match them literally. Some of them can be achieved by different placement as well.

`-` should be the first or last character or escaped using `\`.

```ruby
>> 'ab-cd gh-c 12-423'.scan(/\b[a-z-]{2,}\b/)
=> ["ab-cd", "gh-c"]

>> 'ab-cd gh-c 12-423'.scan(/\b[a-z\-0-9]{2,}\b/)
=> ["ab-cd", "gh-c", "12-423"]
```

`^` should be other than the first character or escaped using `\`.

```ruby
>> 'f*(a^b) - 3*(a+b)'.scan(/a[+^]b/)
=> ["a^b", "a+b"]

>> 'f*(a^b) - 3*(a+b)'.scan(/a[\^+]b/)
=> ["a^b", "a+b"]
```

`[`, `]` and `\` should be escaped using `\`.

```ruby
>> 'words[5] = tea'[/[a-z\[\]0-9]+/]
=> "words[5]"

>> puts '5ba\babc2'[/[a\\b]+/]
ba\bab
```

## Escape sequence sets

Commonly used character sets have predefined escape sequences:

* `\w` is equivalent to `[A-Za-z0-9_]` for matching word characters (recall the definition for word boundaries)
* `\d` is equivalent to `[0-9]` for matching digit characters
* `\s` is equivalent to `[ \t\r\n\f\v]` for matching whitespace characters
* `\h` is equivalent to `[0-9a-fA-F]` for matching hexadecimal characters

These escape sequences can be used as a standalone pattern or inside a character class.

```ruby
>> '128A foo1 fe32 34 bar'.scan(/\b\h+\b/)
=> ["128A", "fe32", "34"]
>> '128A foo1 fe32 34 bar'.scan(/\b\h+\b/).map(&:hex)
=> [4746, 65074, 52]

>> 'Sample123string42with777numbers'.split(/\d+/)
=> ["Sample", "string", "with", "numbers"]
>> 'apple=5, banana=3; x=83, y=120'.scan(/\d+/).map(&:to_i)
=> [5, 3, 83, 120]

>> 'sea eat car rat eel tea'.scan(/\b\w/).join
=> "secret"

>> "tea sea-Pit Sit;(lean_2\tbean_3)".scan(/[\w\s]+/)
=> ["tea sea", "Pit Sit", "lean_2\tbean_3"]
```

And negative logic strikes again. Use `\W`, `\D`, `\S` and `\H` respectively for their negated sets.

```ruby
>> 'Sample123string42with777numbers'.gsub(/\D+/, '-')
=> "-123-42-777-"

>> 'apple=5, banana=3; x=83, y=120'.gsub(/\W+/, '')
=> "apple5banana3x83y120"

# this output can be achieved with a normal string method too, guess which one?!
>> "   1..3  \v\f  fig_tea 42\tzzz   \r\n1-2-3  ".scan(/\S+/)
=> ["1..3", "fig_tea", "42", "zzz", "1-2-3"]
```

`\R` matches line break characters `\n`, `\v`, `\f`, `\r`, `\u0085` (next line), `\u2028` (line separator), `\u2029` (paragraph separator) or `\r\n`. Unlike other escapes, `\R` cannot be used inside a character class.

```ruby
>> "food\r\ngood\napple\vbanana".gsub(/\R/, " ")
=> "food good apple banana"

>> "food\r\ngood"[/\w+\R/]
=> "food\r\n"
```

Here's an example with possessive quantifiers. The goal is to match strings whose first non-whitespace character is not a `#` character. A matching string should have at least one non-`#` character, so empty strings and those with only whitespace characters should not match.

```ruby
>> ip = ['#comment', 'c = "#"', "\t #comment", 'fig', '', " \t "]

# this solution with greedy quantifiers fails because \s* can backtrack
# and [^#] can match a whitespace character as well
>> ip.grep(/\A\s*[^#]/)
=> ["c = \"#\"", "\t #comment", "fig", " \t "]

# this works because \s*+ will not give back any whitespace characters
>> ip.grep(/\A\s*+[^#]/)
=> ["c = \"#\"", "fig"]

# workaround if you use only greedy quantifiers
>> ip.grep(/\A\s*[^#\s]/)
=> ["c = \"#\"", "fig"]
```

## Named character sets

Ruby also provides named character sets, which are Unicode aware unlike escape sequence sets which are limited only to ASCII characters. A named character set is defined by a name enclosed between `[:` and `:]` and has to be used within a character class `[]`, along with any other characters as needed. Using `[:^` instead of `[:` will negate the named set.

Four of the escape sequences presented above have named set equivalents. See [ruby-doc: POSIX Bracket Expressions](https://ruby-doc.org/3.3.0/Regexp.html#class-Regexp-label-POSIX+Bracket+Expressions) for full list and details.

```ruby
# similar to: /\d+/ or /[0-9]+/
>> 'Sample123string42with777numbers'.split(/[[:digit:]]+/)
=> ["Sample", "string", "with", "numbers"]

# similar to: /\S+/
>> "   1..3  \v\f  fig_tea 42\tzzz   \r\n1-2-3  ".scan(/[[:^space:]]+/)
=> ["1..3", "fig_tea", "42", "zzz", "1-2-3"]

# similar to: /[\w\s]+/
>> "tea sea-Pit Sit;(lean_2\tbean_3)".scan(/[[:word:][:space:]]+/)
=> ["tea sea", "Pit Sit", "lean_2\tbean_3"]
```

Here are some named character sets which do not have escape sequence versions:

```ruby
# similar to: /[a-zA-Z]+/
>> 'Sample123string42with777numbers'.scan(/[[:alpha:]]+/)
=> ["Sample", "string", "with", "numbers"]

# remove all punctuation characters
>> ip = '"Hi", there! How *are* you? All fine here.'
>> ip.gsub(/[[:punct:]]+/, '')
=> "Hi there How are you All fine here"
# remove all punctuation characters except . ! and ?
>> ip.gsub(/[[^.!?]&&[:punct:]]+/, '')
=> "Hi there! How are you? All fine here."
```

## Numeric ranges

Character classes can also be used to construct numeric ranges.

```ruby
# numbers between 10 to 29
>> '23 154 12 26 98234'.scan(/\b[12]\d\b/)
=> ["23", "12", "26"]

# numbers >= 100
>> '23 154 12 26 98234'.scan(/\b\d{3,}\b/)
=> ["154", "98234"]

# numbers >= 100 if there are leading zeros
>> '0501 035 154 12 26 98234'.scan(/\b0*+\d{3,}\b/)
=> ["0501", "154", "98234"]
```

However, it is easy to miss corner cases and some ranges are complicated to design. In such cases, it is better to convert the matched portion to appropriate numeric format first.

```ruby
# numbers < 350
>> '45 349 651 593 4 204'.scan(/\d+/).filter { _1.to_i < 350 }
=> ["45", "349", "4", "204"]

# numbers between 200 and 650
>> '45 349 651 593 4 204'.gsub(/\d+/) { (200..650) === $&.to_i ? 0 : 1 }
=> "1 0 1 0 1 0"
```

## Cheatsheet and Summary

| Note    | Description |
| ------- | ----------- |
| `[ae;o]` | match any of these characters once |
| | quantifiers are applicable to character classes too |
| `[3-7]` | range of characters from `3` to `7` |
| `[^=b2]` | match other than `=` or `b` or `2` |
| `[a-z&&[^aeiou]]` | intersection of `a-z` and `[^aeiou]` |
| `[a-z-]` | `-` should be the first/last or escaped using `\` to match literally |
| `[+^]` | `^` shouldn't be the first character or escaped using `\` |
| `[a-z\[\]\\]` | `[`, `]` and `\` should be escaped using `\` |
| `\w` | similar to `[A-Za-z0-9_]` for matching word characters |
| `\d` | similar to `[0-9]` for matching digit characters |
| `\s` | similar to `[ \t\n\r\f\v]` for matching whitespace characters |
| `\h` | similar to `[0-9a-fA-F]` for matching hexadecimal characters |
| | use `\W`, `\D`, `\S` and `\H` for their opposites respectively |
| | these escapes can be used inside character class as well |
| `[[:alpha:]]` | named character set to match alphabets |
| `[[:punct:]]` | match punctuation characters |
| `[[:^punct:]]` | match other than punctuation characters |
|  | see [ruby-doc: POSIX Bracket Expressions](https://ruby-doc.org/3.3.0/Regexp.html#class-Regexp-label-POSIX+Bracket+Expressions) for full list |
| `\R` | matches line breaks `\n`, `\v`, `\f`, `\r`, `\u0085` (next line)
| | `\u2028` (line separator), `\u2029` (paragraph separator) or `\r\n` |
| | `\R` has no special meaning inside a character class |

This chapter focused on how to create custom placeholders for limited set of characters. Grouping and character classes can be considered as two levels of abstractions. On the one hand, you can have character sets inside `[]` and on the other, you can have multiple alternations grouped inside `()` including character classes. As anchoring and quantifiers can be applied to both these abstractions, you can begin to see how regular expressions is considered a mini-programming language.

In the coming chapters, you'll even see how to negate groupings similar to negated character class in certain scenarios.

## Exercises

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

# Groupings and backreferences

This chapter will show how to reuse portions matched by capture groups via backreferences. These can be used within the regexp definition as well as the replacement section. You'll also learn some of the special grouping syntax for cases where plain capture groups aren't enough.

## Backreferences

Backreferences are like variables in a programming language. You have already seen how to use `MatchData` objects and regexp global variables to refer to the text matched by capture groups. Backreferences provide the same functionality, with the advantage that these can be directly used in regexp definition as well as the replacement section. Another advantage is that you can apply quantifiers to backreferences.

The syntax for **replacement section** is `\N` where `N` is the capture group you want.

* use `\1`, `\2` up to `\9` to refer to the corresponding capture group
    * use block form with global variables if you need more than `9` backreferences in the replacement section
* use `\0` or `\&` to get entire the matched portion (same as `$&`)
    * similarly, `` \` `` and `\'` are equivalents for `` $` `` and `$'` respectively

```ruby
# remove square brackets that surround digit characters
>> '[52] apples [and] [31] mangoes'.gsub(/\[(\d+)\]/, '\1')
=> "52 apples [and] 31 mangoes"
# \15 will be treated as \1 followed by 5 as a character
>> '[52] apples [and] [31] mangoes'.gsub(/\[(\d+)\]/, '\15')
=> "525 apples [and] 315 mangoes"

# replace __ with _ and delete _ if it is alone
>> '_apple_ __123__ _banana_'.gsub(/(_)?_/, '\1')
=> "apple _123_ banana"

# add something around the matched strings
>> '52 apples and 31 mangoes'.gsub(/\d+/, '(\0)')
=> "(52) apples and (31) mangoes"
>> 'Hello world'.sub(/.*/, 'Hi. \0. Have a nice day')
=> "Hi. Hello world. Have a nice day"

# duplicate the first field and add it as the last field
>> 'fork,42,nice,3.14'.sub(/,.+/, '\0,\`')
=> "fork,42,nice,3.14,fork"

# swap words that are separated by a comma
>> 'good,bad 42,24 x,y'.gsub(/(\w+),(\w+)/, '\2,\1')
=> "bad,good 24,42 y,x"
```

>![info](images/info.svg) If double quotes is used in the replacement section, you'll have to use `\\1`, `\\2`, `\\3` and so on.

In **regexp definition**, the syntax is `\N` or `\k<N>` to refer to the *N*th capture group. Unlike replacement section, there is no upper limit of `9`. Here are some examples for using backreferences within the regexp definition.

```ruby
# elements that have at least one consecutive repeated character
>> %w[effort flee facade oddball rat tool].grep(/(\w)\1/)
=> ["effort", "flee", "oddball", "tool"]

# remove any number of consecutive duplicate words separated by space
# note the use of quantifier on backreferences
# use \W+ instead of space to cover cases like 'a;a<-;a'
>> 'aa a a a 42 f_1 f_1 f_13.14'.gsub(/\b(\w+)( \1)+\b/, '\1')
=> "aa a 42 f_1 f_13.14"
```

Use `\k<N>` or escape sequences to avoid ambiguity between normal digit characters and backreferences.

```ruby
# \12 is treated as 12th backreference even though there's only one capture group
>> 'two one 5 one2 three'.match?(/([a-z]+).*\12/)
=> false
# there's no ambiguity here as \k<1> can only mean the first backreference
>> 'two one 5 one2 three'.match?(/([a-z]+).*\k<1>2/)
=> true

>> s = 'abcdefghijklmna1d'
# there are 12 capture groups here
# requirement is \1 as backreference and 1 as normal digit
# using escapes is another way to avoid ambiguity
>> s.sub(/(.)(.)(.)(.)(.)(.)(.)(.)(.)(.)(.)(.).*\1\x31/, 'X')
=> "Xd"
```

Here are some ways to avoid ambiguity between `$N` global variables and normal digit characters in the replacement section:

```ruby
# $15 here will result in empty strings
>> '[52] apples [and] [31] mangoes'.gsub(/\[(\d+)\]/) { $15 }
=> " apples [and]  mangoes"

>> '[52] apples [and] [31] mangoes'.gsub(/\[(\d+)\]/) { $1 + "5" }
=> "525 apples [and] 315 mangoes"

>> '[52] apples [and] [31] mangoes'.gsub(/\[(\d+)\]/) { "#{$1}5" }
=> "525 apples [and] 315 mangoes"
```

>![info](images/info.svg) See the [Negative backreferences](#negative-backreferences) section for another use of the `\k<N>` backreference syntax.

## Non-capturing groups

Grouping has many uses like applying quantifier on a regexp portion, creating terse regexp by factoring common portions and so on. It also affects the output of the `scan` and `split` methods as seen in the [Working with matched portions](#working-with-matched-portions) chapter.

When backreferencing is not required, you can use a non-capturing group to avoid the behavior change of the `scan` and `split` methods. It also helps to avoid keeping a track of capture group numbers when that particular group is not needed for backreferencing. The syntax is `(?:pat)` to define a non-capturing group. Recall that `(?>pat)` was used to define atomic groups. More such special groups starting with `(?` syntax will be discussed later on.

```ruby
# non-capturing group needed here as normal ones won't give the whole match
>> 'cost akin more east run against'.scan(/\b\w*(?:st|in)\b/)
=> ["cost", "akin", "east", "against"]

# capturing wasn't needed here, only common grouping and quantifier
>> '123hand42handy777handful500'.split(/hand(?:y|ful)?/)
=> ["123", "42", "777", "500"]

# with normal grouping, need to keep track of all the groups
>> '1,2,3,4,5,6,7'.sub(/\A(([^,]+,){3})([^,]+)/, '\1(\3)')
=> "1,2,3,(4),5,6,7"
# using non-capturing groups, only relevant groups have to be tracked
>> '1,2,3,4,5,6,7'.sub(/\A((?:[^,]+,){3})([^,]+)/, '\1(\2)')
=> "1,2,3,(4),5,6,7"
```

Referring to the text matched by a capture group with a quantifier will give only the last match, not the entire match. Use a capture group around the grouping and quantifier together to get the entire matching portion. In such cases, the inner grouping is an ideal candidate to be specified as non-capturing.

```ruby
>> s = 'hi 123123123 bye 456123456'
>> s.scan(/(123)+/)
=> [["123"], ["123"]]
>> s.scan(/(?:123)+/)
=> ["123123123", "123"]
# note that this issue doesn't affect substitutions
>> s.gsub(/(123)+/, 'X')
=> "hi X bye 456X456"

>> row = 'one,2,3.14,42,five'
# surround only the fourth column with double quotes
# note the loss of columns in the first case
>> puts row.sub(/\A([^,]+,){3}([^,]+)/, '\1"\2"')
3.14,"42",five
>> puts row.sub(/\A((?:[^,]+,){3})([^,]+)/, '\1"\2"')
one,2,3.14,"42",five
```

However, there are situations where capture groups cannot be avoided. In such cases, `gsub` can be used instead of `scan`. Recall that `gsub` can return an Enumerator which can be hacked to simulate `scan` like behavior.

```ruby
# same as: scan(/\b\w*(?:st|in)\b/) but using capture group for gsub
>> 'cost akin more east run against'.gsub(/\b\w*(st|in)\b/).to_a
=> ["cost", "akin", "east", "against"]
# same as: scan(/\b\w*(?:st|in)\b/).map(&:upcase)
>> 'cost akin more east run against'.gsub(/\b\w*(st|in)\b/).map(&:upcase)
=> ["COST", "AKIN", "EAST", "AGAINST"]

# now for an example that is not possible with scan
# get whole words containing at least one consecutive repeated character
>> 'effort flee facade oddball rat tool'.gsub(/\b\w*(\w)\1\w*\b/).to_a
=> ["effort", "flee", "oddball", "tool"]
```

## Subexpression calls

It may be obvious, but it should be noted that backreference will provide the string that was matched, not the regexp that was inside the capture group. For example, if `(\d[a-f])` matches `3b`, then backreferencing will only give `3b` and not any other valid match of regexp like `8f`, `0a` etc. This is akin to how variables behave in programming, only the result of the expression stays after variable assignment, not the expression itself.

If backreferences are like variables, then subexpression calls are like functions. To refer a regexp pattern captured inside groups, use `\g<0>`, `\g<1>`, `\g<2>` etc. This is applicable only in the regexp definition. Recursion will be discussed in the next section.

```ruby
>> row = 'today,2008-03-24,food,2012-08-12,nice,5632'

# same as: /\d{4}-\d{2}-\d{2}.*\d{4}-\d{2}-\d{2}/
>> row[/(\d{4}-\d{2}-\d{2}).*\g<1>/]
=> "2008-03-24,food,2012-08-12"
```

`\g` affects what text is represented by the original capture group in context of `scan` and `split` methods and normal backreference. You will get only the latest matched text.

```ruby
>> d = '2008-03-24,2012-08-12 2017-06-27,2018-03-25 1999-12-23,2001-05-08'

# output has the value matched by \g<1> and not the original capture group
>> d.scan(/(\d{4}-\d{2}-\d{2}),\g<1>/)
=> [["2012-08-12"], ["2018-03-25"], ["2001-05-08"]]

# this will retain the second date of each pair
>> d.gsub(/(\d{4}-\d{2}-\d{2}),\g<1>/, '\1')
=> "2012-08-12 2018-03-25 2001-05-08"
# to retain the first date of each pair, use another capture group
# and adjust the backreference numbers
>> d.gsub(/((\d{4}-\d{2}-\d{2})),\g<2>/, '\1')
=> "2008-03-24 2017-06-27 1999-12-23"
```

>![info](images/info.svg) See also [stackoverflow: How to prevent `\g` subexpression from overwriting the grouped content](https://stackoverflow.com/q/64726107/4082052). The trick is to switch the subexpression call and the capture group.

## Recursive matching

The `\g<N>` subexpression call supports recursion as well. Useful to match nested patterns, which is usually not recommended to be done with regular expressions. Indeed, use a proper parser library if you are looking to parse file formats like html, xml, json, csv, etc. But for some cases, a parser might not be available and using regexp might be simpler than writing a parser from scratch.

First up, matching a set of parentheses that is not nested (termed as **level-one** regexp for reference).

```ruby
# note the use of possessive quantifiers
>> eqn0 = 'a + (b * c) - (d / e)'
>> eqn0.scan(/\([^()]++\)/)
=> ["(b * c)", "(d / e)"]

>> eqn1 = '((f+x)^y-42)*((3-g)^z+2)'
>> eqn1.scan(/\([^()]++\)/)
=> ["(f+x)", "(3-g)"]
```

Next, matching a set of parentheses which may optionally contain any number of non-nested sets of parentheses (termed as **level-two** regexp for reference). See [debuggex](https://www.debuggex.com/r/47pQc0dSqXtWVlJ9) for a railroad diagram, which visually shows the recursive nature of this regexp.

```ruby
>> eqn1 = '((f+x)^y-42)*((3-g)^z+2)'
# note the use of non-capturing group
>> eqn1.scan(/\((?:[^()]++|\([^()]++\))++\)/)
=> ["((f+x)^y-42)", "((3-g)^z+2)"]

>> eqn2 = 'a + (b) + ((c)) + (((d)))'
>> eqn2.scan(/\((?:[^()]++|\([^()]++\))++\)/)
=> ["(b)", "((c))", "((d))"]
```

That looks very cryptic. You can use the [x modifier](#x-modifier) for clarity as well as to make it easy to compare against the recursive version. Breaking down the regexp, you can see `(` and `)` have to be matched literally. Inside that, valid string is made up of either non-parentheses characters or a non-nested parentheses sequence (**level-one** regexp).

```ruby
>> lvl2 = /\(               #literal (
             (?:            #start of non-capturing group
               [^()]++      #non-parentheses characters
               |            #OR
               \([^()]++\)  #level-one regexp
             )++            #end of non-capturing group, 1 or more times
           \)               #literal )
          /x

>> eqn1.scan(lvl2)
=> ["((f+x)^y-42)", "((3-g)^z+2)"]

>> eqn2.scan(lvl2)
=> ["(b)", "((c))", "((d))"]
```

To recursively match any number of nested sets of parentheses, use a capture group and call it within the capture group itself. Since entire regexp needs to be called here, you can use the default zeroth capture group (this also helps to avoid having to use the `gsub+to_a` trick). Comparing with the **level-two** regexp, the only change is that `\g<0>` is used instead of the **level-one** regexp in the second alternation.

```ruby
>> lvln = /\(               #literal (
             (?:            #start of non-capturing group
               [^()]++      #non-parentheses characters
               |            #OR
               \g<0>        #recursive call
             )++            #end of non-capturing group, 1 or more times
           \)               #literal )
          /x

>> eqn0.scan(lvln)
=> ["(b * c)", "(d / e)"]

>> eqn1.scan(lvln)
=> ["((f+x)^y-42)", "((3-g)^z+2)"]

>> eqn2.scan(lvln)
=> ["(b)", "((c))", "(((d)))"]

>> eqn3 = '(3+a) * ((r-2)*(t+2)/6) + 42 * (a(b(c(d(e)))))'
>> eqn3.scan(lvln)
=> ["(3+a)", "((r-2)*(t+2)/6)", "(a(b(c(d(e)))))"]
```

## Named capture groups

Regexp can get cryptic and difficult to maintain, even for seasoned programmers. There are a few constructs to help add clarity. One such is naming the capture groups and using that name for backreferencing instead of plain numbers.

The syntax is `(?<name>pat)` or `(?'name'pat)` for naming the capture groups and `\k<name>` for backreferencing. Any other normal capture group will be treated as if it was a non-capturing group.

```ruby
# giving names to the first and second captured words
>> 'good,bad 42,24 x,y'.gsub(/(?<fw>\w+),(?<sw>\w+)/, '\k<sw>,\k<fw>')
=> "bad,good 24,42 y,x"

# alternate syntax
>> 'good,bad 42,24 x,y'.gsub(/(?'fw'\w+),(?'sw'\w+)/, '\k<sw>,\k<fw>')
=> "bad,good 24,42 y,x"
```

Named capture groups can also be used for subexpression call using the `\g<name>` syntax.

```ruby
>> row = 'today,2008-03-24,food,2012-08-12,nice,5632'

>> row[/(?<date>\d{4}-\d{2}-\d{2}).*\g<date>/]
=> "2008-03-24,food,2012-08-12"
```

If you recall, both `/pat/ =~ string` and `string =~ /pat/` forms can be used. One advantage of the first syntax is that named capture groups will also create variables with those names and can be used instead of relying on global variables.

```ruby
>> details = '2018-10-25,car'

>> /(?<date>[^,]+),(?<product>[^,]+)/ =~ details
=> 0

# same as: $1
>> date
=> "2018-10-25"
# same as: $2
>> product
=> "car"
```

You can use the `named_captures` method on the `MatchData` object to extract the portions matched by named capture groups as a `hash` object. The capture group name will be the **key** and the portion matched by the group will be the **value**.

```ruby
# single match
>> details = '2018-10-25,car,2346'
>> details.match(/(?<date>[^,]+),(?<product>[^,]+)/).named_captures
=> {"date"=>"2018-10-25", "product"=>"car"}

# normal groups won't be part of the output
>> details.match(/(?<date>[^,]+),([^,]+)/).named_captures
=> {"date"=>"2018-10-25"}

# multiple matches
>> s = 'good,bad 42,24'
>> s.gsub(/(?<fw>\w+),(?<sw>\w+)/).map { $~.named_captures }
=> [{"fw"=>"good", "sw"=>"bad"}, {"fw"=>"42", "sw"=>"24"}]
```

## Negative backreferences

Another approach when there are multiple capture groups is to use **negative backreferences**. The negative numbering starts with `-1` to refer to the capture group closest to the backreference that was defined before the use of negative backreference. In other words, the highest numbered capture group prior to the negative backreference will be `-1`, the second highest will be `-2` and so on. The `\k<N>` syntax with negative `N` becomes a negative backreference. This can only be used in the regexp definition section as `\k` in replacement section is reserved for named references.

```ruby
# check if the third and fourth columns have the same data
# same as: match?(/\A([^,]+,){2}([^,]+),\2,/)
>> '1,2,3,3,5'.match?(/\A([^,]+,){2}([^,]+),\k<-1>,/)
=> true
```

## Conditional groups

This special grouping allows you to add a condition that depends on whether a capture group succeeded in matching. You can also add an optional else condition. The syntax as per [Onigmo doc](https://github.com/k-takata/Onigmo/blob/master/doc/RE) is shown below.

>`(?(cond)yes-subexp|no-subexp)`

Here `cond` is `N` for normal backreferences and `<name>` or `'name'` for named backreferences. The **no-subexp** alternate is optional. Here's an example with **yes-subexp** alone being used. The task is to match elements containing word characters only or if it additionally starts with a `<` character, it must end with a `>` character.

```ruby
>> words = %w[<hi> bye bad> <good> 42 <3]
>> words.grep(/\A(<)?\w+(?(1)>)\z/)
=> ["<hi>", "bye", "<good>", "42"]

# for this simple case, you can also expand it manually
# but for complex patterns, it is better to use conditional groups
# as it will avoid repeating the complex pattern
>> words.grep(/\A(?:<\w+>|\w+)\z/)
=> ["<hi>", "bye", "<good>", "42"]

# cannot simply use ? quantifier as they are independent, not constrained
>> words.grep(/\A(?:<?\w+>?)\z/)
=> ["<hi>", "bye", "bad>", "<good>", "42", "<3"]
```

Here's an example with **no-subexp** as well.

```ruby
# filter elements containing word characters surrounded by ()
# or, containing word characters separated by a hyphen
>> words = ['(hi)', 'good-bye', 'bad', '(42)', '-oh', 'i-j', '(-)', '(oh-no)']

# same as: /\A(?:\(\w+\)|\w+-\w+)\z/ or /\A(?:\((\w+)\)|\g<1>-\g<1>)\z/
>> words.grep(/\A(?:(\()?\w+(?(1)\)|-\w+))\z/)
=> ["(hi)", "good-bye", "(42)", "i-j"]
```

Conditional groups have a very specific use case, and it is generally helpful for those cases. The main advantage is that it prevents pattern duplication, although that can also be achieved using [Subexpression calls](#subexpression-calls). Another issue with the duplication alternation method is that you'll have to deal with different backreference numbers if the common pattern uses capture groups.

## Cheatsheet and Summary

| Note    | Description |
| ------- | ----------- |
| `\N` | backreference, gives matched portion of the Nth capture group |
|  | applies to both search and replacement sections |
|  | possible values: `\1`, `\2` up to `\9` in the replacement section |
| | not limited to `9` in the regexp definition |
|  | `\0` or `\&` in replacement section gives the entire matched portion |
|  | `` \` `` and `\'` are equivalents for `` $` `` and `$'` respectively |
| `\k<N>` | N can be both positive/negative (applicable in regexp definition) |
| | negative is relative, `-1` indicates closest group to the left of reference |
| `\g<N>` | subexpression call for the Nth capture group |
|  | applicable only in regexp definition, recursion also possible |
|  | ex: `/\((?:[^()]++\|\g<0>)++\)/` matches nested parentheses |
| `(?:pat)` | non-capturing group |
|  | useful wherever grouping is required, but not backreference |
| `(?<name>pat)` | named capture group |
| `(?'name'pat)` | another way to define named capture groups |
| | use `\k<name>` for backreferencing |
| | use `\g<name>` for subexpression call |
| `/pat/ =~ s` | named capture groups here will create variables with those names |
| `named_captures` | method applied on a `MatchData` object |
|  | gives named capture group portions as a `hash` object |
| `(?(cond)yes\|no)` | conditional group |
|  | match `yes-subexp` if backreferenced group succeeded |
|  | else, match `no-subexp` which is optional |

This chapter showed how to use backreferences and subexpression calls to refer to the portions matched by capture groups in regexp definition and replacement section. When capture groups results in unwanted behavior change (ex: `scan` and `split`), you can use non-capturing groups instead. Named capture groups add clarity to patterns and you can use the `named_captures` method on a `MatchData` object to get a `hash` of matched portions. Conditional groups allows you to take an action based on another capture group succeeding or failing to match. There are more special groups to be discussed in the coming chapters.

## Exercises

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

# Interlude: Common tasks

Tasks like matching phone numbers, ip addresses, dates, etc are so common that you can often find them collected as a library. This chapter shows some examples for the [CommonRegexRuby](https://github.com/talyssonoc/CommonRegexRuby) gem. See also [Awesome Regex: Collections](https://github.com/aloisdg/awesome-regex#collections).

## CommonRegexRuby

You can either install the `commonregex` gem or go through [commonregex.rb](https://github.com/talyssonoc/CommonRegexRuby/blob/master/lib/commonregex.rb) and choose the regular expression you need. See also [CommonRegexRuby: README](https://github.com/talyssonoc/CommonRegexRuby/blob/master/README.md) for details and examples of available patterns. Here's an example for matching ip addresses:

```ruby
>> require 'commonregex'
=> true

>> data = 'hello 255.21.255.22 okay 23/04/96'

# match all available patterns
>> parsed = CommonRegex.new(data)
>> parsed.get_ipv4
=> ["255.21.255.22"]
>> parsed.get_dates
=> ["23/04/96"]

# or, use a specific method directly on CommonRegex
>> CommonRegex.get_ipv4(data)
=> ["255.21.255.22"]
>> CommonRegex.get_dates(data)
=> ["23/04/96"]
```

Make sure to test these patterns for your use case. For example, the below data has a valid IPv4 address followed by another number separated by a dot character. If such cases should be ignored, then you'll have to create your own version of the pattern or change the input accordingly.

```ruby
>> new_data = '23.14.2.4.2 255.21.255.22 567.12.2.1'

# 23.14.2.4 gets matched from 23.14.2.4.2
>> CommonRegex.get_ipv4(new_data)
=> ["23.14.2.4", "255.21.255.22"]
```

## Summary

Some patterns are quite complex and not easy to build and validate from scratch. Libraries like **CommonRegexRuby** are helpful to reduce your time and effort needed for commonly known tasks. However, you do need to **test** the solution for *your* use case. See also [stackoverflow: validating email addresses](https://stackoverflow.com/q/201323/4082052).

# Lookarounds

You've already seen how to create custom character classes and various avatars of special groupings. In this chapter you'll learn more groupings, known as lookarounds, that help to create custom anchors and add conditions within regexp definition. These assertions are also known as **zero-width patterns** because they add restrictions similar to anchors and are not part of the matched portions. Also, you will learn how to negate a grouping similar to negated character sets and what's special about the `\G` anchor.

## Conditional expressions

Before you get used to lookarounds too much, it is good to remember that Ruby is a programming language. You have control structures and you can combine multiple conditions using logical operators, methods like `all?`, `any?`, etc. Also, do not forget that regular expressions is only one of the tools available for string processing.

```ruby
>> items = ['1,2,3,4', 'a,b,c,d', '#apple 123']

# filter elements containing digit and '#' characters
>> items.filter { _1.match?(/\d/) && _1.include?('#') }
=> ["#apple 123"]

# modify elements only if it doesn't start with '#'
>> items.filter_map { |s| s.sub(/,.+,/, ' ') if s[0] != '#' }
=> ["1 4", "a d"]
```

## Negative lookarounds

Lookaround assertions can be added in two ways — **lookbehind** and **lookahead**. Each of these can be a **positive** or a **negative** assertion. Syntax wise, lookbehind has an extra `<` compared to the lookahead version. Negative lookarounds can be identified by the use of `!` whereas `=` is used for positive lookarounds. This section is about negative lookarounds, whose syntax is shown below:

* `(?!pat)` for negative lookahead assertion
* `(?<!pat)` for negative lookbehind assertion

As mentioned earlier, lookarounds are not part of the matched portions and do not capture the matched text.

```ruby
# change 'cat' only if it is not followed by a digit character
# note that the end of string satisfies this assertion
# 'catcat' has two matches as the assertion doesn't consume characters
>> 'hey cats! cat42 cat_5 catcat'.gsub(/cat(?!\d)/, 'dog')
=> "hey dogs! cat42 dog_5 dogdog"

# change 'cat' only if it is not preceded by _
# note how 'cat' at the start of string is matched as well
>> 'cat _cat 42catcat'.gsub(/(?<!_)cat/, 'dog')
=> "dog _cat 42dogdog"

# overlap example
# the final _ was replaced as well as played a part in the assertion
>> 'cats _cater 42cat_cats'.gsub(/(?<!_)cat./, 'dog')
=> "dog _cater 42dogcats"
```

Lookarounds can be mixed with already existing anchors and other features to define truly powerful restrictions.

```ruby
# change whole word only if it is not preceded by : or --
>> ':cart apple --rest ;tea'.gsub(/(?<!:|--)\b\w+/, 'X')
=> ":cart X --rest ;X"

# extract whole words not surrounded by punctuation marks
>> 'tie. ink east;'.scan(/(?<![[:punct:]])\b\w+\b(?![[:punct:]])/)
=> ["ink"]

# add space to word boundaries, but not at the start or end of string
# similar to: gsub(/\b/, ' ').strip
>> 'output=num1+35*42/num2'.gsub(/(?<!\A)\b(?!\z)/, ' ')
=> "output = num1 + 35 * 42 / num2"
```

In all the examples so far, lookahead grouping was placed as a suffix and lookbehind as a prefix. This is how they are used most of the time, but not the only way to use them. Lookarounds can be placed anywhere and multiple lookarounds can be combined in any order. They do not consume characters nor do they play a role in matched portions. They just let you know whether the condition you want to test is satisfied from the current location in the input string.

```ruby
# these two are equivalent
# replace a character as long as it is not preceded by 'p' or 'r'
>> 'spare'.gsub(/(?<![pr])./, '*')
=> "**a*e"
>> 'spare'.gsub(/.(?<![pr].)/, '*')
=> "**a*e"

# replace 'par' as long as 's' is not present later in the input
# this assumes that the lookaround doesn't conflict with search pattern
# i.e. 's' will not conflict 'par' but would affect if it was 'r' and 'par'
>> 'par spare part party'.gsub(/par(?!.*s)/, '[\0]')
=> "par s[par]e [par]t [par]ty"
>> 'par spare part party'.gsub(/(?!.*s)par/, '[\0]')
=> "par s[par]e [par]t [par]ty"

# since the three assertions used here are all zero-width,
# all of the 6 possible combinations will be equivalent
>> 'output=num1+35*42/num2'.gsub(/(?!\z)\b(?<!\A)/, ' ')
=> "output = num1 + 35 * 42 / num2"
```

## Positive lookarounds

Unlike negative lookarounds, absence of something will not satisfy positive lookarounds. Instead, for the condition to satisfy, the pattern has to match actual characters and/or zero-width assertions. Positive lookarounds can be identified by the use of `=` in the grouping. Syntax is shown below:

* `(?=pat)` for positive lookahead assertion
* `(?<=pat)` for positive lookbehind assertion

```ruby
# extract digits only if it is followed by ,
# end of string doesn't qualify as it is impossible to have a comma afterwards
>> '42 apple-5, fig3; x-83, y-20: f12'.scan(/\d+(?=,)/)
=> ["5", "83"]

# extract digits only if it is preceded by - and followed by ; or :
>> '42 apple-5, fig3; x-83, y-20: f12'.scan(/(?<=-)\d+(?=[;:])/)
=> ["20"]

# replace 'par' as long as 'part' occurs as a whole word later in the line
>> 'par spare part party'.gsub(/par(?=.*\bpart\b)/, '[\0]')
=> "[par] s[par]e part party"
```

Lookarounds can be quite handy for simple field based processing.

```ruby
# except first and last fields
>> '1,two,3,four,5'.scan(/(?<=,)[^,]+(?=,)/)
=> ["two", "3", "four"]

# replace empty fields with nil
# note that in this case, the order of lookbehind and lookahead doesn't matter
# can also use: gsub(/(?<![^,])(?![^,])/, 'nil')
>> ',1,,,two,3,,'.gsub(/(?<=\A|,)(?=,|\z)/, 'nil')
=> "nil,1,nil,nil,two,3,nil,nil"

# surround all fields (which can be empty too) with {}
# there is an extra empty string match at the end of non-empty columns
>> ',cat,tiger'.gsub(/[^,]*/, '{\0}')
=> "{},{cat}{},{tiger}{}"
# lookarounds to the rescue
>> ',cat,tiger'.gsub(/(?<=\A|,)[^,]*/, '{\0}')
=> "{},{cat},{tiger}"
```

## Capture groups inside positive lookarounds

Even though lookarounds are not part of the matched portions, capture groups can be used inside positive lookarounds. Can you reason out why it won't work for negative lookarounds?

```ruby
# note also the use of double quoted string in the replacement section
>> puts 'a b c d e'.gsub(/(\S+\s+)(?=(\S+)\s)/, "\\1\\2\n")
a b
b c
c d
d e

# and of course, use non-capturing groups where needed
>> 'pore42 car3 pare7 care5'.scan(/(?<=(po|ca)re)\d+/)
=> [["po"], ["ca"]]
>> 'pore42 car3 pare7 care5'.scan(/(?<=(?:po|ca)re)\d+/)
=> ["42", "5"]
```

## Conditional AND with lookarounds

As promised earlier, here are some examples that show how lookarounds make it simpler to construct AND conditionals.

```ruby
>> words = %w[sequoia subtle questionable exhibit equation]

# words containing 'b' and 'e' and 't' in any order
# same as: /b.*e.*t|b.*t.*e|e.*b.*t|e.*t.*b|t.*b.*e|t.*e.*b/
>> words.grep(/(?=.*b)(?=.*e).*t/)
=> ["subtle", "questionable", "exhibit"]

# words containing all lowercase vowels in any order
>> words.grep(/(?=.*a)(?=.*e)(?=.*i)(?=.*o).*u/)
=> ["sequoia", "questionable", "equation"]

# words containing ('ab' or 'at') and 'q' but not 'n' at the end of the element
>> words.grep(/(?=.*a[bt])(?=.*q)(?!.*n\z)/)
=> ["questionable"]
```

## Set start of matching portion with \K

Some of the positive lookbehind cases can be solved by adding `\K` as a suffix to the pattern to be asserted. The text consumed until `\K` won't be part of the matching portion. In other words, `\K` determines the starting point. The pattern before `\K` can be variable length too.

```ruby
# similar to: /(?<=\b\w)\w*\W*/
# text matched before \K won't be replaced
>> 'sea eat car rat eel tea'.gsub(/\b\w\K\w*\W*/, '')
=> "secret"

# variable length example
>> s = 'cat scatter cater scat concatenate catastrophic catapult duplicate'
# replace only the third occurrence of 'cat'
>> s.sub(/(cat.*?){2}\Kcat/, '[\0]')
=> "cat scatter [cat]er scat concatenate catastrophic catapult duplicate"
# replace every third occurrence
>> s.gsub(/(cat.*?){2}\Kcat/, '[\0]')
=> "cat scatter [cat]er scat concatenate [cat]astrophic catapult duplicate"
```

Here's another example that won't work if greedy quantifier is used instead of possessive quantifier.

```ruby
>> row = '421,cat,2425,42,5,cat,6,6,42,61,6,6,6,6,4'

# similar to: row.split(',').uniq.join(',')
# possessive quantifier used to ensure partial column is not captured
# if a column has the same text as another column, the latter column is deleted
>> nil while row.gsub!(/(?<=\A|,)([^,]++).*\K,\1(?=,|\z)/, '')
=> nil
>> row
=> "421,cat,2425,42,5,6,61,4"
```

>![warning](images/warning.svg) Don't use `\K` with `gsub` or `scan` if the string to match after `\K` can be empty. This is how the regexp engine has been implemented, other libraries like PCRE don't have this limitation. See [stackoverflow: \K in ruby](https://stackoverflow.com/q/48375925/4082052) for some more details on this topic.
> 
> ```ruby
> # [^,]*+ can match empty field, so use lookaround instead of \K
> >> ',cat,tiger'.gsub(/(?<=\A|,)[^,]*+/, '{\0}')
> => "{},{cat},{tiger}"
> >> ',cat,tiger'.gsub(/(?:\A|,)\K[^,]*+/, '{\0}')
> => "{},cat,{tiger}"
> 
> # another example with nothing to be matched after \K
> >> 'abcd 123456'.gsub(/(?<=\w)/, ':')
> => "a:b:c:d: 1:2:3:4:5:6:"
> >> 'abcd 123456'.gsub(/\w/, '\0:')
> => "a:b:c:d: 1:2:3:4:5:6:"
> >> 'abcd 123456'.gsub(/\w\K/, ':')
> => "a:bc:d 1:23:45:6"
> ```

## Variable length lookbehind

The pattern used for lookbehind assertions (either positive or negative) cannot *imply* matching variable length of text. Using fixed length quantifier or alternations of different lengths (but each alternation being fixed length) is allowed. For some reason, alternations of different lengths inside a group is not allowed. Here are some examples to clarify these points:

```ruby
>> s = 'pore42 tar3 dare7 care5'

# allowed
>> s.scan(/(?<=(?:po|da)re)\d+/)
=> ["42", "7"]
>> s.scan(/(?<=\b[a-z]{4})\d+/)
=> ["42", "7", "5"]
>> s.scan(/(?<!tar|dare)\d+/)
=> ["42", "5"]

# not allowed
>> s.scan(/(?<=(?:o|ca)re)\d+/)
invalid pattern in look-behind: /(?<=(?:o|ca)re)\d+/ (SyntaxError)
>> s.scan(/(?<=\b[a-z]+)\d+/)
invalid pattern in look-behind: /(?<=\b[a-z]+)\d+/ (SyntaxError)
```

There are various workarounds possible depending upon the use case. Some of the positive lookbehind cases can be solved using `\K` as seen in the previous section (but note that `\K` isn't a zero-width assertion). For some cases, you can skip lookbehind entirely and just use normal groupings. This works even when you don't know the length of patterns.

```ruby
>> s = 'pore42 tar3 dare7 care5'

# examples where lookbehind won't give error
# same as: s.scan(/(?<=tar|dare)\d+/)
>> s.gsub(/(?:tar|dare)(\d+)/).map { $1 }
=> ["3", "7"]
# delete digits only if they are preceded by 'tar' or 'dare'
# same as: s.gsub(/(?<=tar|dare)\d+/, '')
>> s.gsub(/(tar|dare)\d+/, '\1')
=> "pore42 tar dare care5"

# examples where lookbehind will give error
# workaround for /(?<=\b[pd][a-z]*)\d+/
# get digits only if they are preceded by a word starting with 'p' or 'd'
>> s.gsub(/\b[pd][a-z]*(\d+)/).map { $1 }
=> ["42", "7"]
# delete digits only if they are preceded by a word starting with 'p' or 'd'
>> s.gsub(/(\b[pd][a-z]*)\d+/, '\1')
=> "pore tar3 dare care5"
```

However, if you don't know the lengths for negative lookbehind, you cannot use the above workarounds. The next section will show how to negate a grouping, and that helps for some of the variable negative lookbehind cases.

## Negated groups and the absence operator

Some of the variable length negative lookbehind cases can be simulated by using a negative lookahead (which doesn't have restriction on variable length). The trick is to assert negative lookahead one character at a time and applying quantifiers on such a grouping to satisfy the variable requirement. This will only work if you have well defined conditions before the negated group.

```ruby
# match 'dog' only if it is not preceded by 'cat'
# note the use of \A anchor to force matching all characters up to 'dog'
# cannot use /(?<!cat.*)dog/ as variable length lookbehind is not allowed
>> 'fox,cat,dog,parrot'.match?(/\A((?!cat).)*dog/)
=> false
# match 'dog' only if it is not preceded by 'parrot'
>> 'fox,cat,dog,parrot'.match?(/\A((?!parrot).)*dog/)
=> true

# use non-capturing group if required
>> words = 'apple banana 12_bananas cherry fig mango cake42'
>> words.scan(/\b[a-z](?:(?!pp|rr)[a-z])*\b/)
=> ["banana", "fig", "mango"]
```

Check the matched portions for easier understanding of negated groups:

```ruby
>> 'fox,cat,dog,parrot'[/\A((?!cat).)*/]
=> "fox,"
>> 'fox,cat,dog,parrot'[/\A((?!parrot).)*/]
=> "fox,cat,dog,"
>> 'fox,cat,dog,parrot'[/\A(?:(?!(.)\1).)*/]
=> "fox,cat,dog,pa"
```

There's an alternate syntax that can be used for cases where the grouping to be negated is bound on both sides by another regexp, anchor, etc. It is known as **absence operator** and the syntax is `(?~pat)`.

```ruby
# match if 'do' is not there between 'at' and 'par'
# note that quantifier is not used, absence operator takes care of it
# same as: /at((?!do).)*par/
>> 'fox,cat,dog,parrot'.match?(/at(?~do)par/)
=> false

# match if 'go' is not there between 'at' and 'par'
>> 'fox,cat,dog,parrot'.match?(/at(?~go)par/)
=> true
>> 'fox,cat,dog,parrot'[/at(?~go)par/]
=> "at,dog,par"
```

## \G anchor

The `\G` anchor matches the start of the input string, just like the `\A` anchor. In addition, it will also match at the end of the previous match. This helps you to mark a particular location in the input string and continue from there instead of having the pattern to always check for the specific location. This is best understood with examples.

First, a simple example of using `\G` without alternations. The goal is to replace every character of the first field with `*` where whitespace is the field separator.

```ruby
>> record = '123-456-7890 Joe (30-40) years'

# simply using \S will replace all the non-whitespace characters
>> record.gsub(/\S/, '*')
=> "************ *** ******* *****"
# naively adding the \A anchor replaces only the first one
>> record.gsub(/\A\S/, '*')
=> "*23-456-7890 Joe (30-40) years"

# \G to the rescue!
>> record.gsub(/\G\S/, '*')
=> "************ Joe (30-40) years"
>> record.scan(/\G\S/)
=> ["1", "2", "3", "-", "4", "5", "6", "-", "7", "8", "9", "0"]
```

In the above example, `\G` will first match the start of the string. So, the first character is replaced with `*` since `\S` matches the non-whitespace character `1`. The ending of `1` will now be considered as the new anchor for `\G`. The second character will then match because `2` is a non-whitespace character and `\G` assertion is satisfied due to the previous match. This will continue until the end of the field, which is `0` in the above example. When the next character is considered, `\G` assertion is still satisfied but `\S` fails due to the space character. Because the matching failed, `\G` will *not* be satisfied when the next character `J` is considered. So, no more characters can match since this particular example doesn't provide an alternate way for `\G` to be reactivated.

Here are some more examples of using `\G` without alternations:

```ruby
# all digits and optional hyphen combo from start of string
>> record = '123-456-7890 Joe (30-40) years'
>> record.scan(/\G\d+-?/)
=> ["123-", "456-", "7890"]
>> record.gsub(/\G(\d+)(-?)/, '[\1]\2')
=> "[123]-[456]-[7890] Joe (30-40) years"

# all word characters from the start of string
# only if it is followed by a word character
>> 'cat_12 bat_100 kite_42'.scan(/\G\w(?=\w)/)
=> ["c", "a", "t", "_", "1"]
>> 'cat_12 bat_100 kite_42'.gsub(/\G\w(?=\w)/, '\0:')
=> "c:a:t:_:1:2 bat_100 kite_42"

# all lowercase alphabets or space from the start of string
>> 'par tar-den hen-food mood'.gsub(/\G[a-z ]/, '(\0)')
=> "(p)(a)(r)( )(t)(a)(r)-den hen-food mood"
```

Next, using `\G` as part of alternations so that it can be activated anywhere in the input string. Suppose you need to extract one or more numbers that follow a particular name. Here's one way to solve it:

```ruby
>> marks = 'Joe 75 88 Mina 89 85 84 John 90'

>> marks.scan(/(?:Mina|\G) \K\d+/)
=> ["89", "85", "84"]

>> marks.scan(/(?:Joe|\G) \K\d+/)
=> ["75", "88"]

>> marks.scan(/(?:John|\G) \K\d+/)
=> ["90"]
```

In the above example, `\G` matches the start of the string but the input string doesn't start with a space character. So the regular expression can be satisfied only after the other alternative is matched. Consider the first pattern where `Mina` is the other alternative. Once that string is found, a space and digit characters will satisfy the rest of the regexp. Ending of the match, i.e. `Mina 89` in this case, will now be the `\G` anchoring position. This will allow `85` and `84` to be matched subsequently. After that, `J` fails the `\d` pattern and no more matches are possible (as `Mina` isn't found another time).

In some cases, `\G` anchoring at the start of the string will cause issues. One workaround is to add a negative lookaround assertion. Here's an example. Goal is to mask the password only for the given name.

```ruby
>> passwords = 'Rohit:hunter2 Ram:123456 Ranjit:abcdef'

# the first space separated field is also getting masked here
>> passwords.gsub(/(?:Ram:\K|\G)\S/, '*')
=> "************* Ram:****** Ranjit:abcdef"

# adding a negative assertion helps
>> passwords.gsub(/(?:Ram:\K|\G(?!\A))\S/, '*')
=> "Rohit:hunter2 Ram:****** Ranjit:abcdef"
>> passwords.gsub(/(?:Rohit:\K|\G(?!\A))\S/, '*')
=> "Rohit:******* Ram:123456 Ranjit:abcdef"
```

## Cheatsheet and Summary

| Note    | Description |
| ------- | ----------- |
| lookarounds | custom assertions, zero-width like anchors |
| `(?!pat)` | negative lookahead assertion |
| `(?<!pat)` | negative lookbehind assertion |
| `(?=pat)` | positive lookahead assertion |
| `(?<=pat)` | positive lookbehind assertion |
| `(?!pat1)(?=pat2)` | multiple assertions can be specified next to each other in any order |
|  | as they mark a matching location without consuming characters |
| `pat\K` | `pat` won't be part of the matching portion |
|  | `\K` can be used for some of the positive lookbehind cases |
| `((?!pat).)*` | Negate a grouping, similar to negated character class |
| | helpful to emulate some variable length negative lookbehind cases |
| `(?~pat)` | absence operator |
|  | similar to `((?!pat).)*` if bounded on both sides |
| `\G` | restricts the matching from the start of string like `\A` |
|  | continues matching from the end of previous match as the new anchor |
|  | ex: `'12-34 42'.scan(/\G\d+-?/)` gives `["12-", "34"]` |

In this chapter, you learnt how to use lookarounds to create custom restrictions and also how to use negated grouping. You also learnt about the `\G` anchor. With this, most of the powerful features of regexp have been covered. The special groupings seem never ending though, there are some more of them in the coming chapters!!

## Exercises

>![info](images/info.svg) Please use lookarounds for solving the following exercises even if you can do it without lookarounds. Unless you cannot use lookarounds for cases like variable length lookbehinds.

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

# Modifiers

Just like options change the default behavior of command-line tools, modifiers are used to change aspects of regexp. They can be applied to the entire regexp or just to a particular portion, and both forms can be mixed up as well. The cryptic output of the `Regexp.union` method when one of the arguments is a regexp will be explained as well in this chapter. In regular expression parlance, modifiers are also known as **flags**.

Modifiers already seen will again be discussed in this chapter for sake of completeness. You'll also see how to combine multiple modifiers.

## i modifier

First up, the `i` modifier which will ignore case while matching alphabets.

```ruby
>> 'A Cat' =~ /cat/
=> nil
>> 'A Cat' =~ /cat/i
=> 2

>> 'Cat cot CATER ScUtTLe'.scan(/c.t/i)
=> ["Cat", "cot", "CAT", "cUt"]

# same as: /[a-zA-Z]+/
# can also use: /[A-Z]+/i
>> 'Sample123string42with777numbers'.scan(/[a-z]+/i)
=> ["Sample", "string", "with", "numbers"]
```

## m modifier

Use the `m` modifier to allow the `.` metacharacter to match newline characters as well.

```ruby
# by default, the . metacharacter doesn't match newlines
>> "Hi there\nHave a Nice Day".sub(/the.*ice/, 'X')
=> "Hi there\nHave a Nice Day"

# m modifier will allow the newline character to be matched as well
>> "Hi there\nHave a Nice Day".sub(/the.*ice/m, 'X')
=> "Hi X Day"

# multiple modifiers can be specified next to each other
>> "Hi there\nHave a Nice Day".sub(/the.*day/im, 'Bye')
=> "Hi Bye"
```

## o modifier

The `o` modifier restricts the `#{}` interpolations inside a regexp definition to be performed only once, even if it is inside a loop. As an alternate, you could simply assign a variable with the regexp definition and use that within the loop without needing the `o` modifier.

```ruby
>> words = %w[car bike bus auto train plane]

# as 'o' modifier is used, expression inside #{} will be evaluated only once
# and not calculated again and again every iteration
>> n = 2
?> for w in words
?>     puts w if w.match?(/\A\w{#{2**n}}\z/o)
>> end
bike
auto

# here, the expression result is not a constant, so don't use the 'o' modifier
# with 'o' modifier, there'll be no match because #{n} will be '1' always
>> n = 1
?> for w in words
?>     puts w if w.match?(/\A\w{#{n}}\z/)
?>     n += 1
>> end
bus
auto
train
```

## x modifier

The `x` modifier is another provision like the named capture groups to help add clarity to regexp definitions. This modifier allows to use literal whitespaces for aligning purposes and add comments after the `#` character to define multiline regexps with comments.

```ruby
# same as: pat = /\A((?:[^,]+,){3})([^,]+)/
>> pat = /\A(                 # group-1, captures the first 3 columns
              (?:[^,]+,){3}   # non-capturing group to get the 3 columns
            )
            ([^,]+)           # group-2, captures the 4th column
         /x

>> '1,2,3,4,5,6,7'.sub(pat, '\1(\2)')
=> "1,2,3,(4),5,6,7"
```

As whitespace and `#` characters get special meaning when using the `x` modifier, they have to be escaped or represented by backslash escape sequences to match them literally. See [ruby-doc: Extended Mode](https://ruby-doc.org/3.3.0/Regexp.html#class-Regexp-label-Extended+Mode) for more details.

```ruby
>> 'cat and dog'.match?(/t a/x)
=> false
>> 'cat and dog'.match?(/t\ a/x)
=> true
>> 'cat and dog'.match?(/t[ ]a/x)
=> true
>> 'cat and dog'.match?(/t\x20a/x)
=> true

>> 'apple a#b 123'[/a#b/x]
=> "a"
>> 'apple a#b 123'[/a\#b/x]
=> "a#b"
```

## Inline comments

Comments can also be added using the `(?#comment)` special group. This is independent of the `x` modifier.

```ruby
>> pat = /\A((?:[^,]+,){3})(?#3-cols)([^,]+)(?#4th-col)/

>> '1,2,3,4,5,6,7'.sub(pat, '\1(\2)')
=> "1,2,3,(4),5,6,7"
```

## Inline modifiers

To apply modifiers to specific portions of regexp, specify them inside a special grouping syntax. This will override the modifiers applied to the entire regexp definition, if any. The syntax variations are:

* `(?modifiers:pat)` will apply modifiers only for this regexp portion
* `(?-modifiers:pat)` will negate modifiers only for this regexp portion
* `(?modifiers-modifiers:pat)` will apply and negate particular modifiers only for this regexp portion
* `(?modifiers)` when `:pat` is not used within the grouping, modifiers (including negation) will be applied from this point onwards

In these ways, modifiers can be specified precisely only where it is needed. And as can be observed from below examples, these do not act like a capture group.

```ruby
# case-insensitive only for the 'cat' portion
>> 'Cat scatter CATER cAts'.scan(/(?i:cat)[a-z]*\b/)
=> ["Cat", "catter", "cAts"]
# same thing by overriding the overall modifier
>> 'Cat scatter CATER cAts'.scan(/cat(?-i)[a-z]*\b/i)
=> ["Cat", "catter", "cAts"]

# case-sensitive only for 'Cat'
>> 'Cat SCatTeR CATER cAts'.scan(/(?-i:Cat)[a-z]*\b/i)
=> ["Cat", "CatTeR"]
# same thing without the overall modifier
>> 'Cat SCatTeR CATER cAts'.scan(/Cat(?i)[a-z]*\b/)
=> ["Cat", "CatTeR"]
```

So, now you should be able to decode the output of the `Regexp.union` method when one of the arguments is a regexp.

```ruby
>> Regexp.union(/^cat/i, '123')
=> /(?i-mx:^cat)|123/

>> Regexp.union(/cat/, 'a^b', /the.*ice/im)
=> /(?-mix:cat)|a\^b|(?mi-x:the.*ice)/
```

## Cheatsheet and Summary

| Note    | Description |
| ------- | ----------- |
| `i` | modifier to ignore case |
| `m` | allow the `.` metacharacter to match newline characters too |
| `o` | interpolate `#{}` inside a regexp only once |
| `x` | allows to use literal whitespaces for aligning purposes |
|  | and to add comments after the `#` character |
|  | escape spaces and `#` if needed as part of the actual regexp |
| `(?#comment)` | another way to add comments, not a modifier |
| `(?modifiers:pat)` | apply modifiers only for `pat` |
| `(?-modifiers:pat)` | negate modifiers only for `pat` |
| `(?modifiers-modifiers:pat)` | apply and negate modifiers only for `pat` |
| `(?modifiers)` | modifiers will be applied from this point onwards |

This chapter showed some of the modifiers that can be used to change the default behavior of regexps. And more special groupings were covered.

## Exercises

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

# Unicode

The examples so far had input strings made up of ASCII characters only. The Regexp class uses source encoding by default. And the default string encoding is `UTF-8`. See [ruby-doc: Encoding](https://ruby-doc.org/3.3.0/Encoding.html) for details on working with different string encoding.

## Encoding modifiers

Modifiers can be used to override the encoding to be used. For example, the `n` modifier will use *ASCII-8BIT* instead of the source encoding.

```ruby
# example with ASCII characters only
>> 'apple - banana'.gsub(/\w+/n, '(\0)')
=> "(apple) - (banana)"

# example with non-ASCII characters as well
>> 'fox:αλεπού'.scan(/\w+/n)
(irb):2: warning: historical binary regexp match /.../n against UTF-8 string
=> ["fox"]
```

Character set escapes like `\w` match only ASCII characters whereas named character sets are Unicode aware. You can also use the `(?u)` inline modifier to allow character set escapes to match Unicode characters.

```ruby
>> 'fox:αλεπού'.scan(/\w+/)
=> ["fox"]

>> 'fox:αλεπού'.scan(/[[:word:]]+/)
=> ["fox", "αλεπού"]

>> 'fox:αλεπού'.scan(/(?u)\w+/)
=> ["fox", "αλεπού"]
```

>![info](images/info.svg) See [ruby-doc: Regexp Encoding](https://ruby-doc.org/3.3.0/Regexp.html#class-Regexp-label-Encodings) for other such modifiers and details.

## Unicode character sets

Similar to named character classes and escape sequences, the `\p{}` construct offers various predefined sets that will work for Unicode strings. See [ruby-doc: Unicode Properties](https://ruby-doc.org/3.3.0/Regexp.html#class-Regexp-label-Unicode+Properties) for full list and other details.

```ruby
# extract all consecutive letters
>> 'fox:αλεπού,eagle:αετός'.scan(/\p{L}+/)
=> ["fox", "αλεπού", "eagle", "αετός"]
# extract all consecutive Greek letters
>> 'fox:αλεπού,eagle:αετός'.scan(/\p{Greek}+/)
=> ["αλεπού", "αετός"]

# extract all words
>> 'φοο12,βτ_4;cat'.scan(/\p{Word}+/)
=> ["φοο12", "βτ_4", "cat"]

# delete all characters other than letters
# \p{^L} can also be used instead of \P{L}
>> 'φοο12,βτ_4;cat'.gsub(/\P{L}+/, '')
=> "φοοβτcat"
```

## Codepoints and Unicode escapes

For generic Unicode character ranges, you can specify codepoints using the `\u{}` construct. The below snippet also shows how to get codepoints (numerical value of a character) in Ruby.

```ruby
# to get codepoints from string
>> 'fox:αλεπού'.codepoints.map { '%x' % _1 }
=> ["66", "6f", "78", "3a", "3b1", "3bb", "3b5", "3c0", "3bf", "3cd"]
# one or more codepoints can be specified inside \u{}
>> puts "\u{66 6f 78 3a 3b1 3bb 3b5 3c0 3bf 3cd}"
fox:αλεπού

# character range example using \u{}
# all english lowercase letters
>> 'fox:αλεπού,eagle:αετός'.scan(/[\u{61}-\u{7a}]+/)
=> ["fox", "eagle"]
```

>![info](images/info.svg) See also: [codepoints](https://codepoints.net/), a site dedicated for Unicode characters.

## \X vs dot metacharacter

Some characters have more than one codepoint. These are handled in Unicode with **grapheme clusters**. The dot metacharacter will only match one codepoint at a time. You can use `\X` to match any character, even if it has multiple codepoints.

```ruby
>> 'g̈'.codepoints.map { '%x' % _1 }
=> ["67", "308"]
>> puts "\u{67 308}"
g̈

>> 'cag̈ed'.sub(/a.e/, 'o')
=> "cag̈ed"
>> 'cag̈ed'.sub(/a..e/, 'o')
=> "cod"

>> 'cag̈ed'.sub(/a\Xe/, 'o')
=> "cod"
```

Another difference is that `\X` will always match the newline characters.

```ruby
>> "he\nat".sub(/e.a/, 'ea')
=> "he\nat"
>> "he\nat".sub(/e.a/m, 'ea')
=> "heat"

>> "he\nat".sub(/e\Xa/, 'ea')
=> "heat"
```

## Cheatsheet and Summary

| Note    | Description |
| ------- | ----------- |
| [ruby-doc: Encoding](https://ruby-doc.org/3.3.0/Encoding.html) | details on working with different string encodings |
| `n` | modifier to use *ASCII-8BIT* instead of the source encoding |
| `(?u)` | inline modifier to allow escapes like `\w` to match unicode |
| `\p{}` | Unicode character sets |
| | see [ruby-doc: Unicode Properties](https://ruby-doc.org/3.3.0/Regexp.html#class-Regexp-label-Unicode+Properties) for full list and details |
| `s.codepoints` | get codepoints of characters in the string `s` |
| `\u{}` | specify characters using codepoints |
| `.` | matches only a single codepoint at a time |
| `\X` | matches any character even if it has multiple codepoints |
| | `\X` will always match newline characters |
| | whereas `.` requires the `m` modifier to match newline characters |

A comprehensive discussion on regexp usage with Unicode characters is out of scope for this book. Also, it could throw up [strange issues](https://github.com/k-takata/Onigmo/issues/92). Resources like [regular-expressions: unicode](https://www.regular-expressions.info/unicode.html) and [Programmers introduction to Unicode](https://www.reedbeta.com/blog/programmers-intro-to-unicode/) are recommended for further study.

## Exercises

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

# Further Reading

Note that some of these resources are not specific to Ruby. So you'll have to adapt them to Ruby's regexp syntax.

* [rubular](https://rubular.com/) — Ruby regular expression editor, handy way to test your regexp
* [RubyVerbalExpressions](https://github.com/VerbalExpressions/RubyVerbalExpressions) — construct regular expressions with natural language terms
* [CommonRegexRuby](https://github.com/talyssonoc/CommonRegexRuby) — collection of common regular expressions
* [regexp-examples](https://github.com/tom-lord/regexp-examples) — Generate strings that match a given Ruby regular expression
* [Awesome Regex](https://github.com/aloisdg/awesome-regex) — curated collection of libraries, tools, frameworks and software
* [stackoverflow: ruby regexp](https://stackoverflow.com/questions/tagged/ruby+regex?sort=votes&pageSize=15)
* [stackoverflow: regex FAQ](https://stackoverflow.com/q/22937618/4082052)
    * [stackoverflow: regex tag](https://stackoverflow.com/questions/tagged/regex) is a good source of exercise questions
* [rexegg](https://www.rexegg.com/) — tutorials, tricks and more
* [regular-expressions](https://www.regular-expressions.info/) — tutorials and tools
* [regexcrossword](https://regexcrossword.com/) — tutorials and puzzles, only supports JavaScript flavor
* [debuggex](https://www.debuggex.com) — railroad diagrams for regular expressions, doesn't support Ruby flavor
* [swtch](https://swtch.com/~rsc/regexp/regexp1.html) — stuff about regular expression implementation engines

Here are some links for specific topics:

* [rexegg: best regex trick](https://www.rexegg.com/regex-best-trick.html)
* [regular-expressions: matching numeric ranges](https://www.regular-expressions.info/numericranges.html)
* [regular-expressions: Continuing at The End of The Previous Match](https://www.regular-expressions.info/continue.html) — especially the second section that discusses implementation details
* [regular-expressions: Zero-Length Matches](https://www.regular-expressions.info/zerolength.html)
* [stackoverflow: Greedy vs Reluctant vs Possessive Quantifiers](https://stackoverflow.com/q/5319840/4082052)
* [cloudflare: Details of the Cloudflare outage on July 2, 2019](https://blog.cloudflare.com/details-of-the-cloudflare-outage-on-july-2-2019/) — see appendix for details about CPU exhaustion caused due to regular expression backtracking

