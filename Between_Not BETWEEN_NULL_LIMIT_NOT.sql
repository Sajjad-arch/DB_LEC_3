#using BETWEEn
SELECT dept_name, budget
FROM Department
WHERE budget BETWEEN 500000 AND 700000;

#using IN
SELECT name, salary, dept_id
FROM Employee
WHERE dept_id IN (2, 3);

#using NOT BETWEEN
SELECT dept_name, budget
FROM Department
WHERE budget NOT BETWEEN 600000 AND 900000;

#using NOT
SELECT name, salary, dept_id
FROM Employee
WHERE dept_id NOT IN (2, 3);

#using NULL
SELECT name, salary
FROM Employee
WHERE salary IS NULL;

#using LIMIT
SELECT name, salary
FROM Employee
WHERE salary IS NOT NULL
ORDER BY salary DESC
LIMIT 3;
