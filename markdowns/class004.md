# Variables, Methods, Flow Control and Array

---

# What is A Variable?

  * 储存信息

    >
         储存数据的 ** 容器 **

  * 数据的名称

---

# 变量命名规则

   * 局部变量： 字母、下划线开始
   * 实例变量： ‘@’开始， 如@foo
   * 类变量：   ‘@@’开始， 如@@foo
   * 全局变量： ‘$’开始， 如$:

---

# 变量作用域

  >  A variable's scope determines where in a program a variable is available
  >  for use.

  Ruby中以block来隔离作用域

  PS:  Inner scope can access variables initialized in an outer scope, but not
vice versa.

    !ruby
    a = 5             # variable is initialized in the outer scope

    3.times do |n|    # method invocation with a block
      a = 3           # is a accessible here, in an inner scope?
    end

    puts a

---

# 思考

     !ruby
     a = 5

     3.times do |n|
       a = 3
     end

     puts a

和

    !ruby
    arr = [1, 2, 3]

    for i in arr do
      a = 5
    end

    puts a

---

# do ... end 不一定分割作用域

   >   Note: the key distinguishing factor for deciding whether code delimited
   >   by {} or do/end is considered a block (and thereby creates a new scope
   >   for variables), is seeing if the {} or do/end immediately follows a
   >   method invocation

---

# Methods | 方法

---

# 什么是方法

---

# 为什么需要方法

---

# 参数

---

# 默认参数

---

# 方法调用

---



