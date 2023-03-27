with cte as 
(select *,dense_rank() over(partition by departmentid order by salary desc) as ranking from employee)
select t2.name as Department,t1.name as Employee,t1.salary as Salary from cte t1 
inner join department t2 
on t1.departmentid=t2.id 
and ranking in (1,2,3)