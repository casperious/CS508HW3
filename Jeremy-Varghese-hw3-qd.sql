select 'JV85', name, count((time_slot_id,day,start_hr,start_min)) 
from ((select * from (student natural join takes) where takes.semester = 'Spring' and takes.year='2010') natural join(select * from section natural join time_slot))
group by name