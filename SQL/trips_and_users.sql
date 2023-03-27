with cte as
(
select t1.*,t2.banned as client_banned,t3.banned as driver_banned 
from trips t1 
left join users t2 
on t1.client_id=t2.users_id
left join users t3
on t1.driver_id=t3.users_id
)
select request_at as day,
round((select count(*) from cte c1 where c1.request_at=c2.request_at and status like '%cancelled%' and client_banned='No' and driver_banned='No')/(select count(*) from cte c1 where c1.request_at=c2.request_at and client_banned='No' and driver_banned='No'),2) as 'cancellation rate' 
from cte c2
where request_at between '2013-10-01' and '2013-10-03'
and c2.client_banned='No' and c2.driver_banned='No'
group by request_at