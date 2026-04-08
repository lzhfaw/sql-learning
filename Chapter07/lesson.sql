-- 1、拼接字段
SELECT vend_name + '(' + vend_country + ')'
FROM vendors
ORDER BY vend_name;

-- 2、去掉值右边的空格
SELECT RTRIM(vend_name) + '(' + RTRIM(vend_country) + ')'
FROM vendors
ORDER BY vend_name;

-- 3、AS关键字
SELECT RTRIM(vend_name) + '(' + RTRIM(vend_country) + ')'
AS vend_title
FROM vendors
ORDER BY vend_name;

-- 4、算术运算
SELECT prod_id,
       quantity,
       item_price,
       quantity*item_price AS expanded_price
FROM orderitems
WHERE order_num = 20008;

