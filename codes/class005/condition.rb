if 2 > 1
  puts "2 is larger than 1"
else
  puts "2 is less than 1"
end

2 > 1 ? puts("2 is larger than 1") : puts("2 is less than 1")

number = 2 > 1 ? 2 : 1
puts number

number1 = gets.chomp.to_i
number2 = gets.chomp.to_i

if number1 > number2
  puts "number1 is larger than number2"
elsif number1 < 0
  puts "number1 is negative"
else
  puts "no sense"
end

puts "one line code" if 2 > 1

if 2 > 1 then puts "2 is bigger" end

unless !(2 > 1) then puts "2 is bigger" end

case number
when 1
  puts 1
when 3
  puts 4
when 5
  puts 5
else
  "I am a number"
end

