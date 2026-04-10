/*
1. 使用INNER JOIN 编写SQL 语句，以检索每个顾客的名称（Customers
表中的cust_name）和所有的订单号（Orders 表中的order_num）。
*/
SELECT customers.cust_name,orders.order_num
FROM customers
	INNER JOIN orders ON customers.cust_id = orders.cust_id;

/*
2. 修改刚刚创建的SQL 语句，仅列出所有顾客，即使他们没有下过订单。
*/
SELECT customers.cust_name
FROM customers;

/*
3. 使用OUTER JOIN 联结Products 表和OrderItems 表，返回产品名
称（prod_name）和与之相关的订单号（order_num）的列表，并按
商品名称排序。
*/
SELECT products.prod_name,orderitems.order_num
FROM products
	FULL OUTER JOIN orderitems ON products.prod_id = orderitems.prod_id
ORDER BY products.prod_name;

/*
4. 修改上一题中创建的SQL 语句，使其返回每一项产品的总订单数
（不是订单号）。
*/
SELECT SUM(orderitems.quantity) AS total,
	orderitems.prod_id
FROM products
	FULL OUTER JOIN orderitems ON products.prod_id = orderitems.prod_id
GROUP BY orderitems.prod_id
ORDER BY orderitems.prod_id;

/*
5. 编写SQL 语句，列出供应商（Vendors 表中的vend_id）及其可供产品
的种数，包括没有产品的供应商。你需要使用OUTER JOIN 和COUNT()
聚合函数来计算Products 表中每种产品的数量。注意：vend_id 列
会显示在多个表中，因此在每次引用它时都需要完全限定它。
*/
SELECT Vendors.vend_id, COUNT(prod_id)
FROM Vendors
 LEFT OUTER JOIN Products ON Vendors.vend_id = Products.vend_id
GROUP BY Vendors.vend_id;
