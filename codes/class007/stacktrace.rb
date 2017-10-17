require 'pry'
# require 'byebug'

def divide(number)
  2 / number
rescue Exception => e
  puts e.message
end

puts divide 0
