-- 1、casewhen是从上而下筛选的
SELECT
    emp_name,
    dept,
    amount,
    CASE
        WHEN amount >= 250 THEN 'high'
        WHEN amount >= 150 THEN 'middle'
        ELSE 'low'
    END AS level_tag
FROM dbo.sales_demo;

-- 2、条件计数
SELECT
    dept,
    SUM(CASE WHEN amount >= 200 THEN 1 ELSE 0 END) AS ge_200_cnt,
    SUM(CASE WHEN amount < 200 THEN 1 ELSE 0 END) AS lt_200_cnt
FROM dbo.sales_demo
GROUP BY DEPT;

-- 3、条件求和
SELECT
    dept,
    SUM(CASE WHEN amount >= 200 THEN amount ELSE 0 END) AS big_order_sum
FROM dbo.sales_demo
GROUP BY dept;