/*
1. 编写SQL 语句，返回Customers 表中的顾客名称（cust_name）和
Orders 表中的相关订单号（order_num），并按顾客名称再按订单号
对结果进行排序。实际上是尝试两次，一次使用简单的等联结语法，
一次使用INNER JOIN。
*/
SELECT cust_name,order_num
FROM customers,orders
WHERE customers.cust_id = orders.cust_id
ORDER BY cust_name,order_num;

SELECT cust_name,order_num
FROM customers
INNER JOIN orders ON customers.cust_id = orders.cust_id
ORDER BY cust_name,order_num;

/*
2. 我们来让上一题变得更有用些。除了返回顾客名称和订单号，添加第
三列OrderTotal，其中包含每个订单的总价。有两种方法可以执行
此操作：使用OrderItems 表的子查询来创建OrderTotal 列，或者
将OrderItems 表与现有表联结并使用聚合函数。提示：请注意需要
使用完全限定列名的地方。

**两种写法都易错
*/
SELECT cust_name,orders.order_num,
		SUM(quantity * item_price) AS ordertotal
FROM customers
INNER JOIN orders ON customers.cust_id = orders.cust_id
INNER JOIN orderitems ON orders.order_num = orderitems.order_num
GROUP BY cust_name,orders.order_num
ORDER BY cust_name,order_num;

SELECT cust_name,
		order_num,
		(SELECT SUM(item_price * quantity)
			FROM orderitems
			WHERE orders.order_num = orderitems.order_num) AS ordertotal
FROM customers,orders
WHERE customers.cust_id = orders.cust_id
ORDER BY cust_name,order_num;


/*
3. 我们重新看一下第11 课的挑战题2。编写SQL 语句，检索订购产品
BR01 的日期，这一次使用联结和简单的等联结语法。输出应该与第
11 课的输出相同。
*/
SELECT cust_id,order_date
FROM orders,orderitems
WHERE orders.order_num = orderitems.order_num
AND prod_id = 'BR01'
ORDER BY order_date;

SELECT cust_id,order_date
FROM orders
INNER JOIN orderitems ON orders.order_num = orderitems.order_num
WHERE prod_id = 'BR01'
ORDER BY order_date;


/*
4. 很有趣，我们再试一次。重新创建为第11 课挑战题3 编写的SQL 语
句，这次使用ANSI 的INNER JOIN 语法。在之前编写的代码中使用
了两个嵌套的子查询。要重新创建它，需要两个INNER JOIN 语句，
每个语句的格式类似于本课讲到的INNER JOIN 示例，而且不要忘记
WHERE 子句可以通过prod_id 进行过滤。
*/
SELECT cust_email
FROM customers
INNER JOIN orders ON orders.cust_id = customers.cust_id
INNER JOIN orderitems ON orderitems.order_num = orders.order_num
WHERE prod_id = 'BR01';

/*
5. 再让事情变得更加有趣些，我们将混合使用联结、聚合函数和分组。
准备好了吗？回到第10 课，当时的挑战是要求查找值等于或大于1000
的所有订单号。这些结果很有用，但更有用的是订单数量至少达到
这个数的顾客名称。因此，编写SQL 语句，使用联结从Customers
表返回顾客名称（cust_name），并从OrderItems 表返回所有订单的
总价。
提示：要联结这些表，还需要包括Orders 表（因为Customers 表
与OrderItems 表不直接相关，Customers 表与Orders 表相关，而
Orders 表与OrderItems 表相关）。不要忘记GROUP BY 和HAVING，
并按顾客名称对结果进行排序。你可以使用简单的等联结或ANSI 的
INNER JOIN 语法。或者，如果你很勇敢，请尝试使用两种方式编写。

**易错
*/
SELECT cust_name, SUM(item_price*quantity) AS total_price
FROM Customers, Orders, OrderItems
WHERE Customers.cust_id = Orders.cust_id
 AND Orders.order_num = OrderItems.order_num
GROUP BY cust_name HAVING SUM(item_price*quantity) >= 1000
ORDER BY cust_name;

SELECT cust_name, SUM(item_price*quantity) AS total_price
FROM Customers
 INNER JOIN Orders ON Customers.cust_id = Orders.cust_id
 INNER JOIN OrderItems ON Orders.order_num = OrderItems.order_num
GROUP BY cust_name
HAVING SUM(item_price*quantity) >= 1000
ORDER BY cust_name;