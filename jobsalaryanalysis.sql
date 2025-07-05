CREATE TABLE IF NOT EXISTS job_salaries (
    work_year INT,
    experience_level VARCHAR(5),
    employment_type VARCHAR(5),
    job_title VARCHAR(255),
    salary INT,
    salary_currency VARCHAR(10),
    salary_in_usd INT,
    employee_residence VARCHAR(10),
    remote_ratio INT,
    company_location VARCHAR(10),
    company_size VARCHAR(2)
);


select count(*) from ds_salaries copy;SELECT job_title, ROUND(AVG(salary_in_usd), 0) AS avg_salary_usd
FROM ds_salaries copy
GROUP BY job_title
ORDER BY avg_salary_usd DESC
LIMIT 5;
SELECT company_location, COUNT(*) AS total_jobs
FROM ds_salaries copy
GROUP BY company_location
ORDER BY total_jobs DESC
LIMIT 5;

; 





SELECT * FROM `ds_salaries copy`;



SELECT job_title, ROUND(AVG(salary_in_usd), 0) AS avg_salary_usd
FROM `ds_salaries copy`
GROUP BY job_title
ORDER BY avg_salary_usd DESC
LIMIT 5;


SHOW TABLES;

SELECT experience_level  FROM `ds_salaries - copy`
LIMIT 10;




SELECT job_title, ROUND(AVG(salary_in_usd), 0) AS avg_salary_usd
FROM `ds_salaries - copy`
GROUP BY job_title
ORDER BY avg_salary_usd DESC
LIMIT 5;









SELECT company_location, ROUND(AVG(salary_in_usd), 0) AS avg_salary_usd
FROM `ds_salaries - copy`
GROUP BY company_location
ORDER BY avg_salary_usd DESC
LIMIT 5;







SELECT 
  CASE 
    WHEN remote_ratio = 100 THEN 'Fully Remote'
    WHEN remote_ratio = 50 THEN 'Hybrid'
    WHEN remote_ratio = 0 THEN 'Onsite'
    ELSE 'Other'
  END AS work_type,
  ROUND(AVG(salary_in_usd), 0) AS avg_salary_usd
FROM `ds_salaries - copy`
GROUP BY work_type
ORDER BY avg_salary_usd DESC;















SELECT work_year, ROUND(AVG(salary_in_usd), 0) AS avg_salary_usd
FROM `ds_salaries - copy`
GROUP BY work_year
ORDER BY work_year;









SELECT experience_level, ROUND(AVG(salary_in_usd), 0) AS avg_salary_usd
FROM `ds_salaries - copy`
GROUP BY experience_level
ORDER BY avg_salary_usd DESC;

