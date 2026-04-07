-- 1、选取三列
SELECT prod_name,prod_id,prod_price
FROM Products;

-- 2、全选
SELECT *
FROM products;

-- 3、检索不同的值
SELECT DISTINCT vend_id
FROM products;

-- 4、限制返回的行数
SELECT TOP 5 prod_name
FROM products;