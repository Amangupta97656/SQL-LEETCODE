# Write your MySQL query statement below
select  u.unique_id ,e.name from Employees AS e left JOIN EmployeeUNI  as u ON e.id = u.id;  

# Write your MySQL query statement below
# select eu.unique_id , e.name from Employees as e left join EmployeeUNI  as eu on e.id = eu.id;