# Ruby基础

---

# 提纲

  - Ruby的历史
  - Ruby的设计理念
  - 计算机科学和**抽象**
  - 编辑器（语法高亮, 代码提示）
  - Ruby初步
---

# Ruby的历史
![松本行弘](../slides/theme/images/Yukihiro_Matsumoto.JPG =150x150)

  - 创建于上世纪90年代中期
  - 作者： 松本行弘（Yukihiro Matsumoto）Matz

  (编程语言的历史)

---

# Ruby的理念

   - 让程序员感到幸福
   - 把每个Ruby程序员当成合格的程序员
   - 程序是写给人看的，即humans first，computers second

---

# 计算机科学和抽象层

   - *抽象*： 确保使用的人不需要理解怎么内部的实现机制（黑盒）

     举例：
       -  手机：打电话，发短信（用户不用关心怎么做到的）

---

# 计算机科学和抽象层

  - *接口*： 以手机为例，键盘，发送短信的界面

---

# 计算机科学和抽象层

领域专属语言DSL： Rails，DSL, Rspec, Sinatra

    !ruby
    def get(url)
      visit url
    end

    get 'http://localhost:3000'

  `get`就可以看成是DSL

---

# The Goal

  > to show you Ruby, so that when you come across higher level abstractions
     and DSLs, you can recognize it as just Ruby code.

--- 

# 成为程序员的心路历程

难吗？ **其实不难，但也不易！**

度过不适期，就会逐步适应，逐步享受

  - 忍耐
  - 多练
  - 应用概念

  > There is a shift in thinking that will take place and you will develop the
  > ability to think deeply and clearly about a given problem

---

# 准备工作

---

# 编辑器

  - Sublime Text
  - TextMate
  - Atom

---





![](../slides/theme/images/gaoneng.jpg "Title" width="400px" height="400px")

---
# Hello, world!

    !ruby
    $ mkdir class003
    $ cd class003
    $ git init
    $ touch hello.rb
    $ mate hello.rb

    puts 'Hello, world!'

    $ ruby hello.rb

    $ gem install pry
    # hello.rb
    print 'hello'
    binding.pry
    print ', world!'

    $ ruby hello.rb

    $ pry
---

#  基本代码风格

 - 不用Tab，用2个空格
 - 用 **#** 注释
 - 方法名用蛇形命名法
 - 变量名用蛇形命名法
 - 常量全部大写
 - 类名、模块名用驼峰命名法


---

# 查看文档

![](https://d2aw5xe2jldque.cloudfront.net/books/ruby/images/ruby_doc.jpg)

---

# 踏上Ruby程序员的里程

---

# 数据类型

  - String
  - Symbol
  - Number
  - Bool
  - nil

---
# 操作符

  - +, -, *, /
  - %
  - \>, <, !=, >=, <=
  - <=>

---
# 类型转换

---

# 基本数据结构

  - String

  - Array

  - Hash

---

# 表达式

   **表达式** -- 几乎ruby中所有的语句都是一个表达式

  特点：

    有返回值

    PS: nil， exception都算

---

   # Thank you!

---


