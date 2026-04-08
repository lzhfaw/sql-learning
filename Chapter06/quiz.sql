/* 1. 编写SQL 语句，从Products 表中检索产品名称（prod_name）和描
述（prod_desc），仅返回描述中包含toy 一词的产品。*/
SELECT prod_name,prod_desc
FROM products
WHERE prod_name LIKE '%toy%';

/* 2. 反过来再来一次。编写SQL 语句，从Products 表中检索产品名称
（prod_name）和描述（prod_desc），仅返回描述中未出现toy 一词
的产品。这次，按产品名称对结果进行排序。*/
SELECT prod_name,prod_desc
FROM products
WHERE NOT prod_name LIKE '%toy%'
ORDER BY prod_name;

/* 3. 编写SQL 语句，从Products 表中检索产品名称（prod_name）和描
述（prod_desc），仅返回描述中同时出现toy 和carrots 的产品。
有好几种方法可以执行此操作，但对于这个挑战题，请使用AND 和两
个LIKE 比较。*/
SELECT prod_name,prod_desc
FROM products
WHERE prod_desc LIKE '%toy%' 
AND prod_desc LIKE '%carrots%';

/* 4. 来个比较棘手的。我没有特别向你展示这个语法，而是想看看你根据
目前已学的知识是否可以找到答案。编写SQL 语句，从Products 表
中检索产品名称（prod_name）和描述（prod_desc），仅返回在描述
中以先后顺序同时出现toy 和carrots 的产品。提示：只需要用带
有三个 % 符号的LIKE 即可。*/
SELECT prod_name,prod_desc
FROM products
WHERE prod_desc LIKE '%toy%carrots%';