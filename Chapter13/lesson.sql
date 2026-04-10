-- 1、使用表别名
SELECT cust_name,cust_contact
FROM customers AS c,orders AS o,orderitems AS oi
WHERE c.cust_id = o.cust_id
	AND oi.order_num = o.order_num
	AND prod_id = 'RGAN01';

-- 2、自联结
SELECT c1.cust_id,c1.cust_name,c1.cust_contact
FROM customers AS c1,customers AS c2
WHERE c1.cust_name = c2.cust_name
	AND c2.cust_contact = 'Jim Jones';

-- 3、自然联结，你自己选全表和子集，系统不干
SELECT c.*,o.order_num,o.order_date,
	oi.prod_id,oi.quantity,oi.item_price
FROM customers AS c,orders AS o,orderitems AS oi
WHERE c.cust_id = o.cust_id
	AND oi.order_num = o.order_num
	AND prod_id = 'RGAN01';

-- 4、外联结
SELECT customers.cust_id,orders.order_num
FROM customers
	LEFT OUTER JOIN orders ON customers.cust_id = orders.cust_id;
/*
上面的例子使用LEFT OUTER JOIN 从FROM 子句左边的表
（Customers 表）中选择所有行。为了从右边的表中选择所有行，需要使
用RIGHT OUTER JOIN
*/

-- 5、全外连接
SELECT customers.cust_id,orders.order_num
FROM customers
	FULL OUTER JOIN orders ON customers.cust_id = orders.cust_id;