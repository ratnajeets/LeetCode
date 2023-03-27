with cte as
(
select t1.*,t2.temperature as prev_day_temperature 
from weather t1 join weather t2 
on date_sub(t1.recordDate, interval 1 day)=t2.recorddate
)
select id from cte where temperature>prev_day_temperature