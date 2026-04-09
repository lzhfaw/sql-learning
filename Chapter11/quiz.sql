/*
1. 使用子查询，返回购买价格为10 美元或以上产品的顾客列表。你需
要使用OrderItems 表查找匹配的订单号（order_num），然后使用
Orders 表检索这些匹配订单的顾客ID（cust_id）。
*/

SELECT cust_id
FROM orders
WHERE order_num IN (SELECT order_num
				    FROM orderitems
					WHERE item_price >= 10);

/*
2. 你想知道订购BR01 产品的日期。编写SQL 语句，使用子查询来确定
哪些订单（在OrderItems 中）购买了prod_id 为BR01 的产品，然
后从Orders 表中返回每个产品对应的顾客ID（cust_id）和订单日
期（order_date）。按订购日期对结果进行排序。
*/
SELECT cust_id,order_date
FROM orders
WHERE order_num IN (SELECT order_num
				    FROM orderitems
					WHERE prod_id = 'BR01')
ORDER BY order_date;

/*
3. 现在我们让它更具挑战性。在上一个挑战题，返回购买prod_id 为
BR01 的产品的所有顾客的电子邮件（Customers 表中的cust_email）。
提示：这涉及SELECT 语句，最内层的从OrderItems 表返回order_num，
中间的从Customers 表返回cust_id。
*/
SELECT cust_email
FROM customers
WHERE cust_id IN (SELECT cust_id
				  FROM orders
				  WHERE order_num IN (SELECT order_num
									  FROM orderitems
									  WHERE prod_id = 'BR01'));

/*
4. 我们需要一个顾客ID 列表，其中包含他们已订购的总金额。编写SQL
语句，返回顾客ID（Orders 表中的cust_id），并使用子查询返回
total_ordered 以便返回每个顾客的订单总数。将结果按金额从大到
小排序。提示：你之前已经使用SUM()计算订单总数。

**易错
*/
SELECT cust_id,
		(SELECT SUM(quantity * item_price)
			FROM orderitems
			WHERE orders.order_num = orderitems.order_num) AS total_ordered
FROM orders
ORDER BY total_ordered;

/*
5. 再来。编写SQL 语句，从Products 表中检索所有的产品名称（prod_
name），以及名为quant_sold 的计算列，其中包含所售产品的总数
（在OrderItems 表上使用子查询和SUM(quantity)检索）。
*/
SELECT prod_name,
		(SELECT SUM(quantity)
			FROM orderitems
			WHERE orderitems.prod_id = products.prod_id) AS quant_sold
FROM products;