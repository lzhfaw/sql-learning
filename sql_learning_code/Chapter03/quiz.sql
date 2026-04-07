/* 1. 编写SQL 语句，从Customers 中检索所有的顾客名称（cust_name），
并按从Z 到A 的顺序显示结果。*/
SELECT cust_name
FROM customers
ORDER BY cust_name DESC;

/* 2. 编写SQL 语句，从Orders 表中检索顾客 ID（cust_id）和订单号
（order_num），并先按顾客ID 对结果进行排序，再按订单日期倒序
排列。*/
SELECT cust_id,order_num
FROM orders
ORDER BY cust_id,order_num DESC;

/* 3. 显然，我们的虚拟商店更喜欢出售比较贵的物品，而且这类物品有很多。
编写SQL 语句，显示OrderItems 表中的数量和价格（item_price），
并按数量由多到少、价格由高到低排序。*/
SELECT quantity,item_price
FROM orderitems
ORDER BY quantity DESC,item_price DESC;

/* 4. 下面的SQL 语句有问题吗？（尝试在不运行的情况下指出。）
SELECT vend_name,
FROM Vendors
ORDER vend_name DESC;*/
/* 多了个逗号，报错会说语句有语病；order by 少个by*/