select player_id,device_id 
from activity a1 
where event_date = 
(select min(event_date) from activity a2 where a1.player_id=a2.player_id)