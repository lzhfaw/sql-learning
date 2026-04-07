-- 1、AND操作符
SELECT prod_id,prod_price,prod_name
FROM products
WHERE vend_id = 'DLL01' AND prod_price <= 4;

-- 2、OR操作符
SELECT prod_id,prod_price,prod_name
FROM products
WHERE vend_id = 'DLL01' OR vend_id = 'BRS01';

-- 3、求值顺序：圆括号

-- 4、IN操作符
SELECT prod_name,prod_price
FROM products
WHERE vend_id IN ('DLL01','BRS01')
ORDER BY prod_name;

-- 5、NOT操作符
SELECT prod_name
FROM products
WHERE NOT vend_id = 'DLL01'
ORDER BY prod_name;