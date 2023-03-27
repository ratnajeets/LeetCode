with cte as 
(select min(id) as min_id from person group by email)
delete from person where id not in (select * from cte)