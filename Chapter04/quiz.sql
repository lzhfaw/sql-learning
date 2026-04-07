/* 1. 编写SQL 语句，从Products 表中检索产品ID（prod_id）和产品名
称（prod_name），只返回价格为9.49 美元的产品。*/
SELECT prod_id,prod_name
FROM products
WHERE prod_price = 9.49;

/* 2. 编写SQL 语句，从Products 表中检索产品ID（prod_id）和产品名
称（prod_name），只返回价格为9 美元或更高的产品。*/
SELECT prod_id,prod_name
FROM products
WHERE prod_price >= 9;

/* 3. 结合第3 课和第4 课编写SQL 语句，从OrderItems 表中检索出所有
不同订单号（order_num），其中包含100 个或更多的产品。*/
SELECT DISTINCT order_num
FROM orderitems
WHERE quantity >= 100;

/* 4. 编写SQL 语句，返回Products 表中所有价格在3 美元到6 美元之间
的产品的名称（prod_name）和价格（prod_price），然后按价格对
结果进行排序。（本题有多种解决方案，我们在下一课再讨论，不过
你可以使用目前已学的知识来解决它。）*/
SELECT prod_name,prod_price
FROM products
WHERE prod_price BETWEEN 3 AND 6
ORDER BY prod_price;