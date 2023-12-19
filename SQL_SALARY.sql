SELECT * FROM car_sales.salaries;
USE cae_sales;
SELECT *
FROM salaries
LIMIT 20;

-- 1 SHOW ALL COLUMNS AND ROWS IN THE TABLE.
SELECT *
FROM salaries;

-- 2 Show only the EmployeeName and JobTitle columns

SELECT EmployeeName, JobTitle
FROM salaries;

-- 3 Show the number of employees in the table

SELECT COUNT(*) AS No_employees
FROM salaries;

-- 4 Show the unique job titles in the table.

select DISTINCT JobTitle
from salaries;

-- 5 Show the number of unique job titles in the table.

select COUNT(Distinct JobTitle) AS No_of_unique_title
from salaries;

-- 6 Show the job title and overtime pay for all employees with overtime pay greater than 50000

SELECT JobTitle, Overtimepay
FROM salaries
WHERE Overtimepay > 50000;

-- 7 Show the average base pay for all employees.

select ROUND(AVG(BasePay), 2) AS AVG_PAY
from salaries;

-- 8 Show the top 10 highest paid employees

SELECT EmployeeName, TotalPay
FROM salaries
ORDER BY TotalPay DESC
LIMIT 10;

-- 9 Show the average of Basepay, Overtimepay, and otherpay for each employee

SELECT EmployeeName, AVG(BasePay) AS avg_basepay, AVG(Overtimepay) AS avg_overtimepay, AVG(OtherPay) AS avg_otherpay
FROM salaries
GROUP BY EmployeeName;

-- 10 Show all employees who have the word 'Manager' in their job title.
SELECT EmployeeName, JobTitle
FROM salaries
where JobTitle LIKE '%MANAGER%';

-- 11 Show all employees with a job title not equal to 'Manager'.

SELECT EmployeeName, JobTitle
FROM salaries
where NOT JobTitle = 'MANAGER';

SELECT EmployeeName, JobTitle
FROM salaries
where JobTitle <> 'MANAGER';

-- 12 Show all employees with a total pay between 50,000 and 75,000.

SELECT EmployeeName, TotalPay
FROM salaries
WHERE TotalPay BETWEEN 50000 AND 75000;

-- 13 Show all employees with a basepay less than 50000 or a totalpay greater  than 100,000.

SELECT *
FROM salaries
WHERE BasePay < 50000 OR TotalPay > 100000;

-- 14 Show all employees with a total pay benefits value between 125,000 and 150,000 and a job title containing the word 'Director'

SELECT *
FROM salaries
WHERE TotalPay BETWEEN 125000 AND 150000 AND JobTitle Like '%DIRECTOR%';

-- 15 Show all employees ordered by their total pay benefits in descending order.

SELECT *
FROM salaries
ORDER BY TotalPayBenefits DESC;

-- 16 Show all job titles with an average base pay of atleast 100000 and order them by the average base pay in descending order.

SELECT JobTitle, avg(BasePay) AS avg_bpay
FROM salaries
GROUP BY JobTitle
HAVING AVG(BasePay) >= 100000
ORDER BY AVG(BasePay) DESC;

-- 17 Delete column Notes

 ALTER TABLE salaries
 DROP COLUMN Notes;

-- 18 Update the base pay of all employee with the job title containing 'Manager' by increasing it by 10%
UPDATE salaries
SET BasePay = BasePay*1.1
WHERE JobTitle Like '%MANAGER%';

SET SQL_SAFE_UPDATES = 0;




-- 19 Delete all employees who have no overtime

SELECT *
FROM salaries
WHERE OvertimePay = 0;

DELETE FROM salaries
WHERE OvertimePay = 0;

SELECT *
FROM salaries;




