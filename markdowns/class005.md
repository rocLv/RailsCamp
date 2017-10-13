# Flow control, Loops & Iterators

---

# 知识点回顾

---

# 变量

  * 局部变量
  * 实例变量
  * 类变量
  * 全局变量

---

# 常量

    > 全部大写，单词间用下划线分开


---

# 方法定义

    !ruby
    def method_name
      do_some_thing
    end

    def foo(param)
    end

    def foo(param_with_default = 1)
    end

    def foo(param, hash, &block)
      yield
    end

    def foo;end

---

# Excersises Answer

---

# more about Array

---

#  数组创建
    !ruby
    arr = Array.new
    arr = Array.new(3, 'foo')
    arr = Array.new(2, Hash.new)
    p arr # => [{}, {}]

    arr = Array.new(3) { |i| "item-#{i}" }
    p arr # => ["item-0", "item-1", "item-2"]

    arr = Array(3) # => [3]
    arr = Array([1,2,3]) # => [1,2,3]

    arr = %w(hello world)
---

# 数组取数

    !ruby
    arr = [1,2,3,4]
    arr[0]  # => 1
    arr[20] # => nil
    p arr[0..2] # => [1, 2, 3]

    arr.slice!(1, 2) # => [2, 3]
    p arr # => [1]

---

# 数组插入

    !ruby
    arr = [1,2,3]
    arr.insert(1, [10, 20])
    p arr # => [1, [10, 20], 2, 3]

    arr.insert(1, [10, 20]).flatten! # => [1, 10, 20, 2, 3]
    arr.insert(1, *[10, 20]) 
    p arr # => [1, 10, 20, 2, 3]

    arr = [1,2,3]
    arr[0..0] = [10, 20]
    p arr # => [10, 20, 2, 3]

---

# 数组比较

    > Comparison — Returns an integer (-1, 0, or +1) if this array is less than,
    > equal to, or greater than other_ary.

    !ruby
    arr = [1,2,3]
    another_arr = [1,2,4]

    arr <=> another_arr # => -1


    arr = [1, 5, 3]
    another_arr = [1, 2, 3]

    arr <=> another_arr # => 1 (5 is greater than 2)

---
    !ruby
    arr = [1, 5, 3]
    another_arr = [1, "test", 3]

    arr <=> another_arr # => nil

    arr = [1, 2, 3]
    another_arr = [1, 2, 3, 4]

    p arr <=> another_arr # => -1
    arr = [1, 2, 3, 4, 5]
    another_arr = [1, 2]

    arr <=> another_arr # => 1

---

# 数组运算

    !ruby
    arr = ["foo", "bar"]
    arr2 = ["bar", "baz"]
    arr + arr2 # => ["foo", "bar", "bar", "baz"]

    arr - arr2 # => ["foo"]

---

# 并集| 和交集 & 运算

    !ruby

    arr = ["foo", "bar"]
    arr2 = ["bar", "baz"]

    p arr | arr2 # => ["foo", "bar", "baz"]

    p arr & arr2 # => ["bar"]

---

# Flow Control

---

* 条件表达式

* 循环

---

# 条件表达式 | Condition Expressions

    !ruby

    if condition
      puts "hello"
    end

    if condition then
      do_some_thing
    elsif condition_2
      do_other_thing
    else
      do_last_thing
    end

    puts 'I am valid, too' if condition

---

# Case语句

    !ruby
    case variable
    when 1
      do_some_thing
    when /regexp/
      do_other_thing
    when "equals me"
      do_another_thing
    else
      do_default_thing
    end

---

# 三目运算符 | Ternary Operator

    !ruby
    condition ? when_true : when_false

    string = 1 > 2 ? "Idiot." : "Clever"

---

# unless

    !ruby

    unless condition
      do_other_thing
    end

    puts "I am nil" unless nil

---

# 比较符 | Conditionals

   * <
   * \>
   * <=
   * =>
   * ==
   * !=

   PS: ruby codes/class005/conditional.rb
---

   逻辑运算符
   * &&, and
     > true && true
       => true
       true && false
       => false
       false && false
       => false

   * ||, or

      > false || false
        => false
        other: true
---
   # 除了**false**和**nil**，其他的都是true

    > In Ruby, every expression evaluates to true when used in flow control, except for false and nil.

---

#小结：

  * if ... else ... end
  * unless ... else ... end
  * case...when...else...end
  * 3 > 2 ? true_part :false_part

---

# 循环

---

# loop

    !ruby
    loop do
      puts "它会不断的循环，直到你用 CTRL + C终止它"
      sleep 1
    end

    loop do
      puts "I am running"
      break gets.chomp == "q"
    end

---

# while

    !ruby
    while condition
      do_something
      break if break_also_works
    end

---

# until

    !ruby
    # behavior like while not
    until condition
      do_other_thing
    end

---

# do...while

    !ruby
    begin
      do_some_thing
    end while(condition)

---

# for

    !ruby
    a = gets.chomp.to_i

    for i in 1..a do
      puts i
    end

    arr = [1, 2, 3]

    for element in arr do
      puts element
    end

---

# Iterators

    !ruby
    names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']

    names.each { |name| puts name  }

    names.each do |name|
      puts "#{x}. #{name}"
      x += 1
    end

---

# 递归

   [视频](https://v.qq.com/x/page/m0305q7iwsj.html)

   斐波那契数列的实现
   0, 1, 1, 2, 3, 5, 8, 13..., 求第n个数的值

    !ruby
    def fib(n)
      return n if n <= 1
      fib(n-1) + fib(n-2)
    end


   阶乘
   fact(n) = n! = 1 x 2 x 3 x ... x (n-1) x n = (n-1)! x n = fact(n-1) x n

    !ruby
    def fac(n)
      return 1 if n == 1
      n * fac(n - 1)
    end


---
# 小技巧

   写do的时候一定记得写end

---


# 总结

* <, >, <=, >=,  ==, !=
* &&, ||, and, or
* if...end
* case...when...end
* unless...end
* until...end
* while...end
* loop do...end
* until...end
* each, map
* recursive

---

# 练习

    
    > PS: 别忘了用rubocop哦
---

# Thank You







   
