-- 1、子查询
SELECT cust_id
FROM orders
WHERE order_num IN (SELECT order_num
					FROM orderitems
					WHERE prod_id = 'RGAN01');

-- 2、计算字段子查询
SELECT cust_name,
	   cust_state,
	   (SELECT COUNT(*)
	   FROM orders
	   WHERE orders.cust_id = customers.cust_id) AS orders
FROM customers
ORDER BY cust_name;