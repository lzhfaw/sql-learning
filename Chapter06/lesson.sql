-- 1、百分号（%）通配符
SELECT prod_id,prod_name
FROM products
WHERE prod_name LIKE 'Fish%';

-- 2、下划线（_）通配符
SELECT prod_id,prod_name
FROM products
WHERE prod_name LIKE '__ inch teddy bear';

-- 3、方括号（[]）通配符
SELECT cust_contact
FROM customers
WHERE cust_contact LIKE '[JM]%'
ORDER BY cust_contact;

