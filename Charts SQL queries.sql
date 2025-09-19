-- 1. Attrition By Gender 

SELECT gender , COUNT(attrition) AS Attrition 
FROM hrdata WHERE attrition = 'Yes' 
GROUP BY gender
ORDER BY COUNT(attrition) DESC;

-- 2. Department wise Attrition 
SELECT 
  department, 
  COUNT(attrition) AS Attrition_Count,
  ROUND(
    CAST(COUNT(attrition) AS FLOAT) * 100 / 
    (SELECT COUNT(attrition) FROM hrdata WHERE attrition = 'Yes'),
    2
  ) AS Attrition_Percentage
FROM hrdata 
WHERE attrition = 'Yes'
GROUP BY department 
ORDER BY COUNT(attrition) DESC;


-- 3. Number of Employees by Age Group
SELECT age , SUM(employee_count) AS Employee_Count 
FROM hrdata 
GROUP BY age
ORDER BY age;

-- 4. Education field wise Attrition
SELECT education_field , COUNT(attrition) AS Attrition 
FROM hrdata
WHERE attrition = 'Yes'
GROUP BY education_field
ORDER BY COUNT(attrition) DESC;

-- 5. Attrition Rate by Gender for different Age Group
SELECT 
  age_band,
  gender,
  COUNT(attrition) AS Attrition,
  ROUND(
    (CAST(COUNT(attrition) AS FLOAT) * 100 / 
     (SELECT COUNT(attrition) FROM hrdata WHERE attrition = 'Yes')),
    2
  ) AS Attrition_Percentage
FROM hrdata
WHERE attrition = 'Yes'
GROUP BY age_band, gender
ORDER BY age_band, gender;

-- 6. Job satisfaction rating 
SELECT job_role, [1] AS one, [2] AS two, [3] AS three, [4] AS four
FROM (
    SELECT 
        job_role, 
        job_satisfaction, 
        employee_count
    FROM hrdata
) AS SourceTable
PIVOT (
    SUM(employee_count)
    FOR job_satisfaction IN ([1], [2], [3], [4])
) AS PivotTable
ORDER BY job_role;
