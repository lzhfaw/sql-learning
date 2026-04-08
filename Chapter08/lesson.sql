-- 1、upper函数：文本大写
SELECT vend_name,UPPER(vend_name) AS vend_name_upcase
FROM vendors
ORDER BY vend_name;

-- 2、soundex函数：检测发音，别管这是什么玩意了
SELECT cust_name,cust_contact
FROM customers
WHERE SOUNDEX(cust_contact) = SOUNDEX('Michael Green');

-- 3、datepart函数：返回日期的某一部分
SELECT order_num
FROM orders
WHERE DATEPART(yy,order_date) = 2020;

/*
4、未细讲的文本处理函数：
LEFT()（或使用子字符串函数）：返回字符串左边的字符
LENGTH()：返回字符串的长度
LOWER()：将字符串转换为小写
LTRIM()：去掉字符串左边的空格
RIGHT()（或使用子字符串函数）：返回字符串右边的字符
RTRIM()：去掉字符串右边的空格
SUBSTRING()：提取字符串的组成部分
*/

/*
5、未细讲的计算函数
ABS()：返回一个数的绝对值
COS()：返回一个角度的余弦
EXP()：返回一个数的指数值
PI()：返回圆周率π 的值
SIN()：返回一个角度的正弦
SQRT()：返回一个数的平方根
TAN()：返回一个角度的正切
*/