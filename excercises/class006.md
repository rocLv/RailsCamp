# Flow Control

## Write down whether the following expressions return true or false. Then type the expressions into irb to see the results.

```ruby
(32 * 4) >= 129
false != !true
true == 4
false == (847 == '874')
(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false

```

## Write a method that takes a string as argument. The method should return the all-caps version of the string, only if the string is longer than 10 characters. Example: change "hello world" to "HELLO WORLD". (Hint: Ruby's String class has a few methods that would be helpful. Check the [Ruby Docs](http://ruby-doc.org/core-2.1.0/String.html)!)

## Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100.

## What will each block of code below print to the screen? Write your answer on a piece of paper or in a text editor and then run each block of code to see if you were correct.

```ruby

'4' == 4 ? puts("TRUE") : puts("FALSE")

x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3)
  puts "Did you get it right?"
else
  puts "Did you?"
end

y = 9
x = 10
if (x + 1) <= (y)
  puts "Alright."
elsif (x + 1) >= (y)
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!"
else
  puts "Alrighty!"
end
```

## Rewrite your program from exercise 3 using a case statement. Wrap the statement from exercise 3 in a method and wrap this new case statement in a method. Make sure they both still work.

## When you run the following code...

```ruby
#test_code.rb
def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
end

equal_to_four(5)

```

You get the following error message:

```ruby
test_code.rb:96: syntax error, unexpected end-of-input, expecting keyword_end
```

Why do you get this error and how can you fix it?

# Loops & Iterators

## What does the each method in the following program return after it is finished executing?

```ruby

x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end
```

## Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". Each loop can get info from the user.

```ruby

```

## Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.


## Write a method that counts down to zero using recursion.


# Array

## Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.

```ruby
arr = [1, 3, 5, 7, 9, 11]
number = 3
```

## What will the following programs return? What is value of arr after each?

```ruby
# excersice 1

arr = ["b", "a"]
arr = arr.product(Array(1..3))
arr.first.delete(arr.first.last)

# excersice 2
arr = ["b", "a"]
arr = arr.product([Array(1..3)])
arr.first.delete(arr.first.last)

```

## How do you print the word "example" from the following array?

```ruby
arr = [["test", "hello", "world"],["example", "mem"]]
```

## What does each method return in the following example?
```ruby
arr = [15, 7, 18, 5, 12, 8, 5, 1]

arr.index(5)
arr.index[5]
arr[6]
```

## What is the value of a, b, and c in the following program?
```ruby
string = "Welcome to America!"
a = string[6]
b = string[11]
c = string[19]
```

## You run the following code...
```ruby
names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody'
```

...and get the following error message:

```ruby
TypeError: no implicit conversion of String into Integer
  from (irb):2:in `[]='
  from (irb):2
  from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'
```

What is the problem and how can it be fixed?

## Write a program that iterates over an array and builds a new array that is the result of incrementing each value in the original array by a value of 2. You should have two arrays at the end of this program, The original array and the new array you've created. Print both arrays to the screen using the p method instead of puts.


