select 'JV85',name,semester,year, time_slot_id, count((day,start_hr,start_min))
from (((instructor natural join teaches) natural join section) natural join time_slot) as t1
group by name,semester,year,time_slot_id