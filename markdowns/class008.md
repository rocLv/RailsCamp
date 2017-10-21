# Ruby On Rails

教材：[Ruby On Rails教程](https://railstutorial-china.org/book/)

---

# MVC

* M： Model 模型
* C： Controller 控制器
* V： View 视图

    >
     MVC模式（Model–view–controller）是软件工程中的一种软件架构模式，把软件系统分为三个基本部分：模型（Model）、视图（View）和控制器（Controller）。

    MVC模式的目的是实现一种动态的程序设计，使后续对程序的修改和扩展简化，并且使程序某一部分的重复利用成为可能。

---

# MVC

* 控制器（Controller）- 负责转发请求，对请求进行处理。
* 视图（View）        - 界面设计人员进行图形界面设计。
* 模型（Model）       - 程序员编写程序应有的功能（实现算法等等）、数据库专家进行数据管理和数据库设计(可以实现具体的功能)。

---

# Rails MVC

![](https://betterexplained.com/wp-content/uploads/rails/mvc-rails.png)

---

# Rails是怎么工作的

![](https://dab1nmslvvntp.cloudfront.net/wp-content/uploads/2012/10/mvc21-530x308.png)

[参考](https://www.sitepoint.com/getting-started-with-mvc/)

---


---

1. 通过浏览器访问： http://localhost/page/show/47


2. Rails通过 config/routes.rb文件里的内容来确定访问那个Controller， 这里是   PagesController#show

3. Controller Acts as Manager: 发送命令，返回结果

4. Model： 代表数据和业务逻辑

5. 这里意味着从数据库取出id是47的博客

6. Model返回从数据库获取的数据，然后把结果传递给Controller

7. View： Controller调用app/views/pages/show.html.erb, 渲染HTML文件

8.controller 把渲染好的HTML返回给浏览器

---



