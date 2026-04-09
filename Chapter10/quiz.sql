/*
1. OrderItems 表包含每个订单的每个产品。编写SQL 语句，返回每个
订单号（order_num）各有多少行数（order_lines），并按order_lines
对结果进行排序。

**易错
*/
SELECT order_num,
       COUNT(*) AS order_lines
FROM orderitems
GROUP BY order_num
ORDER BY order_lines;

/*
2. 编写SQL 语句，返回名为cheapest_item 的字段，该字段包含每个
供应商成本最低的产品（使用Products 表中的prod_price），然后
从最低成本到最高成本对结果进行排序。

**易错
*/
SELECT vend_id,MIN(prod_price) AS cheapest_item
FROM products
GROUP BY vend_id
ORDER BY cheapest_item;

/*
3. 确定最佳顾客非常重要，请编写SQL 语句，返回至少含100 项的所有
订单的订单号（OrderItems 表中的order_num）。
*/
SELECT DISTINCT order_num
FROM orderitems
WHERE quantity >= 100;

/*
4. 确定最佳顾客的另一种方式是看他们花了多少钱。编写SQL 语句，
返回总价至少为1000 的所有订单的订单号（OrderItems 表中的
order_num）。提示：需要计算总和（item_price 乘以quantity）。
按订单号对结果进行排序。
*/
SELECT order_num,item_price * quantity  AS total_spend
FROM orderitems
WHERE item_price * quantity >= 1000
ORDER BY order_num;

/*
5. 下面的SQL 语句有问题吗？（尝试在不运行的情况下指出。）
SELECT order_num, COUNT(*) AS items
FROM OrderItems
GROUP BY items
HAVING COUNT(*) >= 3
ORDER BY items, order_num;

**易错
GROUP BY 不能用别名
*/