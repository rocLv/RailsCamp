class Person
  attr_accessor :sex, :age
  attr_reader   :birth_day
  attr_writer   :name
end

john = Person.new
john.sex = :male
# john.birth_day = '2017-10-16'
john.name = "John"

puts john.name
puts john.sex

# ~> /Users/wangqsh/Code/RailsCamp/codes/class007/class.rb.rubyeval:12:in `<main>': undefined method `name' for #<Person:0x007f9d1002b4f8 @sex=:male, @name="John"> (NoMethodError)
# ~> Did you mean?  name=
