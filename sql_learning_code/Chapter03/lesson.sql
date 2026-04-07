-- 1、按单个列排序
SELECT prod_name
FROM products
ORDER BY prod_name;

-- 2、按多个列排序
SELECT prod_id,prod_price,prod_name
FROM products
ORDER BY prod_price,prod_name;

-- 3、按列的位置排序
SELECT prod_id,prod_price,prod_name
FROM products
ORDER BY 2,3;

-- 4、指定排序方向
SELECT prod_id,prod_price,prod_name
FROM products
ORDER BY prod_price DESC,prod_name;