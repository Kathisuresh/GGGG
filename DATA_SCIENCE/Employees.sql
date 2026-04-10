use ASSIGNMENTS;
create table Employees(EmployeeID int,FirstName varchar(30),LastName varchar(30),Department varchar(50),Salary bigint,HireDate date,ManagerID int); 
INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Salary, HireDate, ManagerID) VALUES
(1, 'John', 'Smith', 'HR', 55000, '2019-03-15', NULL),
(2, 'Sarah', 'Johnson', 'IT', 72000, '2020-07-20', 1),
(3, 'Michael', 'Brown', 'IT', 68000, '2018-01-10', 1),
(4, 'Linda', 'Davis', 'Finance', 80000, '2021-06-12', 3),
(5, 'David', 'Wilson', 'HR', 60000, '2017-11-01', 1),
(6, 'Emma', 'Taylor', 'IT', 75000, '2020-12-05', 2);

--Retrieve the top 3 highest-paid employees from the Employees table
SELECT TOP 3 * FROM Employees ORDER BY Salary DESC;


--Find the second highest salary in the table without using MAX() twice
SELECT max(Salary) FROM Employees where Salary<(select Max(Salary) from Employees)


--• List employees who earn more than the average salary in their department.
select Department,FirstName,Salary from Employees where Salary>(select avg(Salary) from Employees)


--• Show departments where the total salary expense exceeds 150000
select Department,sum(Salary) from Employees Group by Department having sum(Salary)>150000;



--• Retrieve all employees along with their salary rank (highest salary = rank 1) using
DENSE_RANK(). Show the result ordered by rank and salary.
select EmployeeId,FirstName,Salary,DENSE_RANK()over(order by Salary desc) from Employees;


--Retrive second highest salary from each Department
SELECT Department, Salary
FROM (
    SELECT 
        Department,
        Salary,
        DENSE_RANK() OVER (PARTITION BY Department ORDER BY Salary DESC) AS SalaryRank
    FROM Employees
) AS ranked
WHERE SalaryRank = 2;


--Retrive average salary of each department 
select Department,avg(Salary) over(partition by Department ) as Avg_Salary from Employees

select * from Employees;
select FirstName,Salary,FIRST_VALUE(Salary) over(order by Salary) as pre_salary from Employees;
select FirstName,Salary,LEAD(Salary,1) over(order by Salary) as next_salary from Employees;
