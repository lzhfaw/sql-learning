/*
1、AVG()通过对表中行数计数并计算其列值之和，求得该列的平均值，
忽略列值为NULL 的行。
*/
SELECT AVG(prod_price) AS avg_price
FROM products;

-- 2、COUNT()函数进行计数。
/*
使用COUNT(*)对表中行的数目进行计数，不管表列中包含的是空值
（NULL）还是非空值。
*/
SELECT COUNT(*) AS num_cust
FROM customers;
/*
使用COUNT(column)对特定列中具有值的行进行计数，忽略NULL 值。
*/
SELECT COUNT(cust_email) AS num_cust
FROM customers;

-- 3、MAX()返回指定列中的最大值，忽略NULL。
SELECT MAX(prod_price) AS max_price
FROM products;

-- 4、MIN()的功能正好与MAX()功能相反，它返回指定列的最小值，忽略NULL。
SELECT MIN(prod_price) AS min_price
FROM products;

-- 5、SUM()用来返回指定列值的和（总计），忽略NULL。
SELECT SUM(quantity) AS items_ordered
FROM orderitems
WHERE order_num = 20005;