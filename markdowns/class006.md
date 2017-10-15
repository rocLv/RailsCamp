# 正则表达式、字符串、Hash

---

# 知识点回顾

---

# 流程控制

---

# 循环

---

# 遍历（Iterator）

---

# 正则表达式

---

考虑以下情况：

* 电话号码验证

* 用户名只能包含字母和数字

* Email格式验证

* 微信号爬虫

---

#肿么办😰？

---

#学会验证手机号码

  * 正则表达式的表示： /我是正则表达式/
  * 11位数字
  * 首数字是1
  * 后面的是除了1、2的其他数字
  * 剩余的9位都是数字

    !ruby
    mobile = '13812345678'
    mobile.match(/^1[^12]{1}[1-9]{9}$/)

---

# 正则表达式基础


   * [abc]	A single character of: a, b, or c
   * [^abc]	Any single character except: a, b, or c
   * [a-z]	Any single character in the range a-z
   * [a-zA-Z]	Any single character in the range a-z or A-Z
   * ^	Start of line
   * $	End of line
   * \A	Start of string
   * \z	End of string

---

# 正则表达式基础

   * (...)  Capture everything enclosed
   * (a|b)  a or b
   * a?  Zero or one of a
   * a*  Zero or more of a
   * a+  One or more of a
   * a{3}  Exactly 3 of a
   * a{3,}  3 or more of a
   * a{3,6}  Between 3 and 6 of a

---

# 正则表达式基础

  *  .  Any single character
  *  \s  Any whitespace character
  *  \S  Any non-whitespace character
  *  \d  Any digit
  *  \D  Any non-digit
  *  \w  Any word character (letter, number, underscore)
  *  \W  Any non-word character
  *  \b  Any word boundary

---

# 学会匹配Email

  Email格式：
   * 字母、数字、下划线组成
   * 必须有@符号
   * 以.com结尾
   * 只允许gmail、qq、163

    !ruby
    # valid email:
    # roc@qq.com
    # roc@gmail.com
    # roc@163.com

    # Invalid email:
    # r-oc@163.com
    # roc.qq.com
    # r-oc@163.cn
    email = 'roc@qq.com'

    email.match(/^[a-z0-9_]+@(gmail|qq|163){1}\.com$/i)

---

# 字符串

---

# Difference between "" and ''

   * ""里面的特殊字符会转义
   * ''里面的内容会原样输出

---

# Heredoc

   !ruby
   heredoc =<<<MYNAME
      content
      conttent
   MYNAME

   pretty_heredoc =<<<-HEREDOC
     heredoc
     heredoc
     heredoc
   HEREDOC

---

# %q() and %Q()

   * %q == ''
   * %Q == ""

---

# Strange %x!!

    !ruby
    %x!ls!
    => "README.md\ncodes\nexcercises\nmarkdowns\nslides\n"

---

# More fun: %r()

    %r() == //


---

# 字符串运算

  * +
  * -
  * *

---

# 字符串连接

   * "abc" + "123"
   * "abc" + 123
   * "abc#{123}"
   * "abc" + nil
   * "abc#{nil}"

---

# 字符串替换

    !ruby
    str = "I am pretty, pretty!"

    str.sub("pretty", "cute")

    # 使用正则表达式
    str.sub(/pretty/, "cute")
    str.gsub(/pretty/, "cute")

---

# 字符串分割

    !ruby
    csv = "name,age,sex"

    csv.split(',')
    csv.split(/,/)

    csv = "name, age,      sex"
    csv.split /,\s+/

---

# 其他常用的字符串方法

---

# Hash


---

    !ruby
    user = User.new(name: "rocLv", email: "wangqsh@g.cn", sex: "male")

---

# 遍历Hash

    !ruby
    user = {name: 'rocLv', email: 'wang@gmail.com'}

    user.each do |key, value|
      puts value
    end

---

# Hash#values

---

# Hash#keys


---

# Thank you



