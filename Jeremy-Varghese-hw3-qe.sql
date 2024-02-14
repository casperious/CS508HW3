select name,semester,year,day,start_hr,count((semester,year,day,start_hr,start_min))
from ((instructor natural join teaches) natural join section) natural join time_slot
group by name,semester,year,day,start_hr
having count((semester,year,day,start_hr,start_min))>1