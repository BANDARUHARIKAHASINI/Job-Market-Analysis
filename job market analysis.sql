USE project_job_market_analysis;
SELECT * FROM Market;
SELECT Location,
COUNT(*) AS Total_Jobs
FROM Market
GROUP BY Location
ORDER BY Total_Jobs DESC;
SELECT Location,
AVG(Lower_Salary) AS Avg_Min_Salary,
AVG(Upper_Salary) AS Avg_Max_Salary
FROM Market
GROUP BY Location
ORDER BY Avg_Max_Salary DESC;
SELECT Location,
AVG(Avg_SalaryK) AS Average_Salary
FROM Market
GROUP BY Location
ORDER BY Average_Salary DESC;
SELECT Industry,
COUNT(*) AS Total_Jobs
FROM Market
GROUP BY Industry
ORDER BY Total_Jobs DESC
LIMIT 5;
SELECT Company_Name,
COUNT(*) AS Openings
FROM Market
GROUP BY Company_Name
ORDER BY Openings DESC
LIMIT 10;
SELECT Job_Title,
COUNT(*) AS Total_Jobs
FROM Market
GROUP BY Job_Title
ORDER BY Total_Jobs DESC;
SELECT Job_Title,
AVG(Avg_SalaryK) AS Avg_Salary
FROM Market
GROUP BY Job_Title
ORDER BY Avg_Salary DESC;
SELECT
SUM(Python) AS Python,
SUM(spark) AS Spark,
SUM(aws) AS AWS,
SUM(excel) AS Excel,
SUM(sql_) AS SQL_Skill,
SUM(tableau) AS Tableau,
SUM(hadoop) AS Hadoop
FROM Market;
SELECT Degree,
AVG(Avg_SalaryK) AS Avg_Salary
FROM Market
GROUP BY Degree;
SELECT seniority_by_title,
COUNT(*) AS Total_Jobs
FROM Market
GROUP BY seniority_by_title;
SELECT Rating,
COUNT(*) AS Companies
FROM Market
GROUP BY Rating
ORDER BY Rating DESC;
SELECT Age,
COUNT(*) AS Companies
FROM Market
GROUP BY Age;