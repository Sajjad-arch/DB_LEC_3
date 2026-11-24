#using BETWEEn
SELECT dept_name, budget
FROM Department
WHERE budget BETWEEN 500000 AND 700000;

#using IN
SELECT name, salary, dept_id
FROM Employee
WHERE dept_id IN (2, 3);
