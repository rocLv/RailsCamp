## 1. Write a program called name.rb that asks the user to type in their name and then prints out a greeting message with their name included.


## 2.Write a program called age.rb that asks a user how old they are and then tells them how old they will be in 10, 20, 30 and 40 years. Below is the output for someone 20 years old.

Sample output:
      # output of age.rb for someone 20 yrs old

      How old are you?
      In 10 years you will be:
      30
      In 20 years you will be:
      40
      In 30 years you will be:
      50
      In 40 years you will be:
      60

## 3. Add another section onto name.rb that prints the name of the user 10 times. You must do this without explicitly writing the puts method 10 times in a row. Hint: you can use the times method to do something repeatedly.


## 4. Modify name.rb again so that it first asks the user for their first name, saves it into a variable, and then does the same for the last name. Then outputs their full name all at once.


## 5. Look at the following programs...

```ruby

x = 0
3.times do
  x += 1
end
puts x

```

and

```ruby

y = 0
3.times do
  y += 1
  x = y
end

puts x

```

## 6. What does the following error message tell you?

```ruby
NameError: undefined local variable or method `shoes' for main:Object
  from (irb):3
  from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'

```

## 7. Write a program that prints a greeting message. This program should contain amethod called greeting that takes a name as its parameter and returns a string.


## 8. What do the following expressions evaluate to?

```ruby
x = 2

puts x = 2

p name = "Joe"

four = "four"

print something = "nothing"

```

## 9. Write a program that includes a method called multiply that takes two arguments and returns the product of the two numbers.


## 10. What will the following code print to the screen?

```ruby
def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

```

## 11. 1) Edit the method definition in exercise #10 so that it does print words on the screen.
##     2) What does it return now?


## 12. What does the following error message tell you?


```ruby
ArgumentError: wrong number of arguments (1 for 2)
  from (irb):1:in `calculate_product'
  from (irb):4
  from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'

```
