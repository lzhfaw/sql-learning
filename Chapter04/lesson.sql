-- 1、过滤
SELECT prod_name,prod_price
FROM products
WHERE prod_price=3.49;

-- 2、范围值检查
SELECT prod_name,prod_price
FROM products
WHERE prod_price BETWEEN 5 AND 10;

-- 3、空值检查
SELECT prod_name
FROM products
WHERE prod_price IS NULL;

