-- 1、联合查询
SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_state IN ('IL','IN','MI')
UNION
SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_name = 'Fun4All';
/*
UNION 必须由两条或两条以上的SELECT 语句组成，语句之间用关键字
UNION 分隔（因此，如果组合四条SELECT 语句，将要使用三个UNION
关键字）。
UNION 中的每个查询必须包含相同的列、表达式或聚集函数（不过，
各个列不需要以相同的次序列出）。
列数据类型必须兼容：类型不必完全相同，但必须是DBMS 可以隐含
转换的类型（例如，不同的数值类型或不同的日期类型）。
*/

-- 2、包含重复行（默认不重复）
SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_state IN ('IL','IN','MI')
UNION ALL
SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_name = 'Fun4All';

-- 3、在用UNION 组合查询时只能使用一条ORDER BY 子句，必须位于最后
SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_state IN ('IL','IN','MI')
UNION
SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_name = 'Fun4All'
ORDER BY cust_name, cust_contact;