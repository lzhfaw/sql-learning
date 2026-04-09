-- 1、分组是使用SELECT 语句的GROUP BY 子句建立的。可以将数据分为多个逻辑组
SELECT vend_id,COUNT(*) AS num_prods
FROM products
GROUP BY vend_id;

-- 2、过滤分组
SELECT cust_id,COUNT(*) AS orders
FROM orders
GROUP BY cust_id
HAVING COUNT(*) >= 2;

-- 3、GROUP BY 和 ORDER BY 的使用实例
SELECT order_num,COUNT(*) AS items
FROM orderitems
GROUP BY order_num
HAVING COUNT(*) >= 3
ORDER BY items,order_num;

/*
4、SELECT子句及其顺序
SELECT：要返回的列或表达式
FROM：从中检索数据的表
WHERE：行级过滤
GROUP BY：分组说明
HAVING；组级过滤
ORDER BY：输出排序顺序
*/