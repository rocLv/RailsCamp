if 1 > 2 then
  puts 'Idiot'
elsif 2 > 1
  puts 'nosense'
else
  puts 'Clever'
end

#Don't do this
if !true
  puts "I am false"
end

# perfer unless

unless false
  puts "I'm work!"
end

case variable
when 1
  puts "1"
when 2..5
  puts "larger than 2, less than 5"
when "abc", "dev"
  puts "abc"
when /regexp/
  puts "match regexp"
else
  puts "default value"
end

##
# Loops & Iterators
#

10.times do |i|
  puts i
end

[1, 2, 3].each do |element|
  puts element
end


[1, 2, 3].each_with_index do |element, index|
  puts element
end

loop do
  puts "running"
  sleep 10 #unit: seconds
end

condition = false

while(codition)
  puts "never show"
end

until(condition)
  puts "not true"
end

for element in array
  puts element
end

[1, 2, 3].map do |element|
   element + 1
end


