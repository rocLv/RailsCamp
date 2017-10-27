# 开发第一个玩具应用

---

# 数据库范式

[PPT](https://www.slideshare.net/jagaarj/database-design-normalization?from_action=save)


---

# 范式的包含关系

一个数据库设计如果符合第二范式，一定也符合第一范式。如果符合第三范式，一定也符合第二范式…

![](http://upload-images.jianshu.io/upload_images/1727535-580926986d188788.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

---

# 小结

* 第一范式：字段不可分割（原子）

* 第二范式： 每一行都有主键

* 第三范式：非主键不能互相依赖

---

# 表现层状态转化（REST）

如果阅读过一些 Ruby on Rails Web 开发相关的资料，你会发现很多地方都提到了“REST”，它是“表现层状态转化”（REpresentational State Transfer）的简称。REST 是一种架构风格，用于开发分布式、基于网络的系统和软件应用，例如万维网和 Web 应用。REST 理论很抽象，在 Rails 应用中，REST 意味着大多数组件（例如用户和微博）都被模型化，变成资源（resource），可以创建（create）、读取（read）、更新（update）和删除（delete）。这些操作与关系型数据库中的 CRUD 操作和 HTTP 请求方法（POST、GET、PATCH 和 DELETE）对应。3.3 节，特别是旁注 3.2，将更详细地介绍 HTTP 请求。

作为 Rails 应用开发者，REST 开发方式能帮助你决定编写哪些控制器和动作：你只需简单地把可以创建、读取、更新和删除的资源理清就可以了。对本章的“用户”和“微博”来说，这一过程非常明确，因为它们都是很自然的资源形式。在第 14 章将看到，使用 REST 架构可以通过一种自然而便捷的方式解决棘手问题（“关注用户”功能）。

---

# 想想微博里面有什么资源？

* 我们要存储那些信息？
* 它们之间有什么关系

---

# 现场演示

---

# 总结

* 

---

# Thank you

---

