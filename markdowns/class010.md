# Postgresql数据库

---

# SQL GROUP BY语句

---

<h1>SQL GROUP BY 语句</h1>

<p><strong>合计函数 (比如 SUM) 常常需要添加 GROUP BY 语句。</strong></p>

<h2>GROUP BY 语句</h2>

<p>GROUP BY 语句用于结合合计函数，根据一个或多个列对结果集进行分组。</p>


<h3>SQL GROUP BY 语法</h3>

<pre>SELECT column_name, aggregate_function(column_name)
FROM table_name
WHERE column_name operator value
GROUP BY column_name
</pre>

---

<div>
    <div>
        <h2>SQL GROUP BY 实例</h2>
        
        <p>我们拥有下面这个 "Orders" 表：</p>
        
        <table class="dataintable">
          <tbody><tr>
            <th>O_Id</th>
            <th>OrderDate</th>
            <th>OrderPrice</th>
            <th>Customer</th>
          </tr>
          <tr>
            <td>1</td>
            <td>2008/12/29</td>
            <td>1000</td>
            <td>Bush</td>
          </tr>
          <tr>
            <td>2</td>
            <td>2008/11/23</td>
            <td>1600</td>
            <td>Carter</td>
          </tr>
          <tr>
            <td>3</td>
            <td>2008/10/05</td>
            <td>700</td>
            <td>Bush</td>
          </tr>
          <tr>
            <td>4</td>
            <td>2008/09/28</td>
            <td>300</td>
            <td>Bush</td>
          </tr>
          <tr>
            <td>5</td>
            <td>2008/08/06</td>
            <td>2000</td>
            <td>Adams</td>
          </tr>
          <tr>
            <td>6</td>
            <td>2008/07/21</td>
            <td>100</td>
            <td>Carter</td>
          </tr>
        </tbody></table>
        
        <p>现在，我们希望查找每个客户的总金额（总订单）。</p>
        
        <p>我们想要使用 GROUP BY 语句对客户进行组合。</p>
        
        <p>我们使用下列 SQL 语句：</p>
        
        <pre>SELECT Customer,SUM(OrderPrice) FROM Orders
        GROUP BY Customer
        </pre>
    </div>
</div>

---

<h1>SQL HAVING 子句</h1>

<div>
    <h2>HAVING 子句</h2>
    <p>在 SQL 中增加 HAVING 子句原因是，WHERE 关键字无法与合计函数一起使用。</p>
    <h3>SQL HAVING 语法</h3>
    <pre>SELECT column_name, aggregate_function(column_name)
    FROM table_name
    WHERE column_name operator value
    GROUP BY column_name
    HAVING aggregate_function(column_name) operator value
    </pre>
</div>

---

<h2>SQL HAVING 实例</h2>

<p>我们拥有下面这个 "Orders" 表：</p>

<table class="dataintable">
  <tbody><tr>
    <th>O_Id</th>
    <th>OrderDate</th>
    <th>OrderPrice</th>
    <th>Customer</th>
  </tr>
  <tr>
    <td>1</td>
    <td>2008/12/29</td>
    <td>1000</td>
    <td>Bush</td>
  </tr>
  <tr>
    <td>2</td>
    <td>2008/11/23</td>
    <td>1600</td>
    <td>Carter</td>
  </tr>
  <tr>
    <td>3</td>
    <td>2008/10/05</td>
    <td>700</td>
    <td>Bush</td>
  </tr>
  <tr>
    <td>4</td>
    <td>2008/09/28</td>
    <td>300</td>
    <td>Bush</td>
  </tr>
  <tr>
    <td>5</td>
    <td>2008/08/06</td>
    <td>2000</td>
    <td>Adams</td>
  </tr>
  <tr>
    <td>6</td>
    <td>2008/07/21</td>
    <td>100</td>
    <td>Carter</td>
  </tr>
</tbody></table>

<p>现在，我们希望查找订单总金额少于 2000 的客户。</p>

<p>我们使用如下 SQL 语句：</p>

<pre>SELECT Customer,SUM(OrderPrice) FROM Orders
GROUP BY Customer
HAVING SUM(OrderPrice)&lt;2000
</pre>

---

# 结果集类似

<table class="dataintable">
  <tbody><tr>
    <th>Customer</th>
    <th>SUM(OrderPrice)</th>
  </tr>
  <tr>
    <td>Carter</td>
    <td>1700</td>
  </tr>
</tbody></table>


<p>现在我们希望查找客户 "Bush" 或 "Adams" 拥有超过 1500 的订单总金额。</p>

<p>我们在 SQL 语句中增加了一个普通的 WHERE 子句：</p>

<pre>SELECT Customer,SUM(OrderPrice) FROM Orders
WHERE Customer='Bush' OR Customer='Adams'
GROUP BY Customer
HAVING SUM(OrderPrice)&gt;1500
</pre>

<p>结果集：</p>

<table class="dataintable">
  <tbody><tr>
    <th>Customer</th>
    <th>SUM(OrderPrice)</th>
  </tr>
  <tr>
    <td>Bush</td>
    <td>2000</td>
  </tr>
  <tr>
    <td>Adams</td>
    <td>2000</td>
  </tr>
</tbody></table>

---

# SQL JOIN

SQL join 用于根据两个或多个表中的列之间的关系，从这些表中查询数据。

Join 和 Key
有时为了得到完整的结果，我们需要从两个或更多的表中获取结果。我们就需要执行
join。
数据库中的表可通过键将彼此联系起来。主键（Primary
Key）是一个列，在这个列中的每一行的值都是唯一的。在表中，每个主键的值都是唯一的。这样做的目的是在不重复每个表中的所有数据的情况下，把表间的数据交叉捆绑在一起。

---

# LEFT JOIN & Right Join & Inner Join

---




