# Class, Module, Proc and more

---

# Ruby是一个面向对象的语言

* Ruby中所有的都是对象
* 对象的特点：属性和方法

---

# 先混个眼熟

    !ruby
    # basic_object.rb

    Class.superclass.superclass.superclass
    => BasicObject

---

# 定义类

    !ruby
    # key words `class`
    class Person
      attr_accessor :sex, :age
      attr_reader  :birth_day
      attr_writer  :name
    end

---

# 构造函数

    !ruby

    class Person
      attr_accessor :sex, :age

      def initialize(sex, birth_day)
        @sex = sex
        @birth_day = birth_day
      end
    end

---

# 类继承

    !ruby
    class Male < Person
      def moustache
        super
        puts "like eight"
      end
    end

---

# 实例方法的作用域

    !ruby
    class Person

      public #default

      def my_public_method
        'I am a public method'
      end

      protected

      def my_protected_method
        'Only used by self and decendants'
      end

      private

      def my_private_method
        'Only used by self'
      end
    end

---

# 实例方法和类方法

    !ruby
    class Person
      def my_instance_method
        puts "I'm an instance method."
      end

      def self.my_class_method
        puts "I'm a class method."
      end

    end

---

#  self

    !ruby
    def my_method
      self
    end

    class Person
      self
    end

---

#  更多定义类方法的方法(元编程内容)

    !ruby
    def Person.my_class_method
      puts "I'm a class method."
    end

    class Person
      class << self
        def my_class_method
          puts "I'm a class method."
        end

        def my_another_class_method
          puts "I'm a class method."
        end
      end
    end

---

# 小结

* 类的定义
* 类的属性
* 类方法
* 实例方法
* 构造函数

---

# Module

    > Module和class的区别： module只有方法，没有属性

 * 命名空间
 * 实现多重继承

---

# 通过Module实现命名空间

    !ruby
    module MyNamespace
      APP_NAME = "my name space app name"
    end

    module AnotherNamespace
      APP_NAME = "my name space app name"
    end

    p MyNamespace::APP_NAME
    p AnotherNamespace::APP_NAME


PS: 通过module的声明实现不同gem之间的隔离

---


# 通过Module mixin 实现多重继承

    !ruby
    module Breathable
      def breathe
        puts "inhale"
        puts "exhale"
      end
    end

    class Person
      include Breathable # methods can be modified
      extend  Breathable # methods can be modified

      prepend Breathable # From ruby 2.0, YOU ARE THE BOSS
    end

---

# Hook: included, extended, prepended

    !ruby
    # untested

    module Breathable
      def self.included base
        p "I am included"
      end

      def self.extended base
        p "I am extend"
      end

      def self.prepend base
        p "I am prended"
      end
    end


PS: [Reference](https://www.sitepoint.com/rubys-important-hook-methods/)

---

# Hook: inherited

    !ruby
    class Person
      def self.inherited base
        p "Inherited by #{base}"
      end
    end

    class Male < Person
    end
---

# 变量的指针

  ![](https://d2aw5xe2jldque.cloudfront.net/books/ruby/images/variables_pointers1.jpg  "pointers" width="300px")

---

# 变量的指针

  ![](https://d2aw5xe2jldque.cloudfront.net/books/ruby/images/variables_pointers2.jpg)


---

# Blocks

    !ruby
    # Block Examples

    [1,2,3].each { |x| puts x*2 }   # block is in between the curly braces

    [1,2,3].each do |x|
      puts x*2                    # block is everything between the do and end
    end

---

# Blocks

    !ruby
    def take_block(number, &block)
      block.call(number)
    end

    number = 42

    take_block(number) do |num|
      puts "Block being called in the method! #{num}"
    end

    take_block(string, number) do |string|
      puts "Block being called in the method! #{string}"
    end

---

# Proc, lambda, proc

   * Proc 是类
   * lambda和proc是方法

    !ruby
    block = Proc.new { puts "I am a Proc instance" }
    block = -> { puts "I am a Proc instance" } #lambda
    block = lambda { puts "I am a lambda" }

   [Reference](http://awaxman11.github.io/blog/2013/08/05/what-is-the-difference-between-a-block/)
---

# Proc, lambda, proc

    !ruby
    #passing_proc.rb

    def take_proc(proc)
      [1, 2, 3, 4, 5].each do |number|
        proc.call number
      end
    end

    proc = Proc.new do |number|
      puts "#{number}. Proc being called in the method!"
    end

    take_proc(proc)

---

# Exception Handling

    !ruby
    def foo
      begin
        2 / 0
      rescue Exception => e
        p e.messages
      ensure
        p "ensure"
      end
    end

    def foo
      2 / 0
    rescue
      puts "invalid expression"
    end

---

# StackTrce and Debug

---

# Thank you


