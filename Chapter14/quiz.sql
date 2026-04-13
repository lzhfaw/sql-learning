/*
1. 编写SQL 语句，将两个SELECT 语句结合起来，以便从OrderItems
表中检索产品ID（prod_id）和quantity。其中，一个SELECT 语
句过滤数量为100 的行，另一个SELECT 语句过滤ID 以BNBG 开头的
产品。按产品ID 对结果进行排序。
*/
SELECT prod_id,quantity
FROM orderitems
WHERE quantity = 100
UNION
SELECT prod_id,quantity
FROM orderitems
WHERE prod_id = 'BNBG%'
ORDER BY prod_id;

/*
2. 重写刚刚创建的SQL 语句，仅使用单个SELECT 语句。
*/
SELECT prod_id,quantity
FROM orderitems
WHERE quantity = 100 OR prod_id = 'BNBG%'
ORDER BY prod_id;

/*
3. 我知道这有点荒谬，但这节课中的一个注释提到过。编写SQL 语句，
组合Products 表中的产品名称（prod_name）和Customers 表中的
顾客名称（cust_name）并返回，然后按产品名称对结果进行排序。
*/
SELECT prod_name
FROM products
UNION 
SELECT cust_name
FROM customers
ORDER BY prod_name;

/*
4. 下面的SQL 语句有问题吗？（尝试在不运行的情况下指出。）
SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_state = 'MI'
ORDER BY cust_name;
UNION
SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_state = 'IL'ORDER BY cust_name;

显然orderby必须在最后且只有一句
*/