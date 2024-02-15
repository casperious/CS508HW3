select name,semester,year
from ((instructor natural join teaches) natural join section)
group by name,semester,year
having count(time_slot_id)>1