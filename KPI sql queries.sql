-- KPI 

-- 1. Employee Count
SELECT SUM(employee_count) AS Total_Employees FROM hrdata;

-- 2. Attrition Count 
SELECT COUNT(attrition) AS Attrition_Count FROM hrdata WHERE attrition = 'Yes';

-- 3. Attrition Rate 
SELECT 
  ROUND((CAST((SELECT COUNT(attrition) FROM hrdata WHERE attrition = 'Yes') AS FLOAT)
  / SUM(employee_count))*100,2) AS Attrition_Rate
FROM hrdata;

-- 4. Active Employee

SELECT SUM(employee_count) -
	   (SELECT COUNT(attrition) FROM hrdata WHERE attrition = 'Yes')
	   AS Active_Employees
FROM hrdata;

-- 5. Average Age 

SELECT ROUND(AVG(age),0) AS Average_Age FROM hrdata;

