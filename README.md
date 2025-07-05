#  Job Salaries Analysis Using SQL

This project analyzes a global dataset of tech job salaries from [Data Science Salaries Dataset](https://www.kaggle.com/datasets/ruchi798/data-science-job-salaries) using MySQL.



##  Key Questions Answered

1. 🔝 What are the top 5 highest-paying job titles?
2. 🌍 Which countries pay the most?
3. 🏠 How does salary vary by remote work level?
4. ⏳ What are the trends in salary over recent years?
5. 💼 How do experience levels affect salary?



 Sample SQL Query

--sql
SELECT job_title, ROUND(AVG(salary_in_usd), 0) AS avg_salary_usd
FROM `ds_salaries - copy`
GROUP BY job_title
ORDER BY avg_salary_usd DESC
LIMIT 5;
