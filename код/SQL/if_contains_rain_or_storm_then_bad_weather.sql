select ts,
case
when description like '%rain%' or description like '%storm%' 
then 'bad' 
else 'good' 
end as weather_conditions 
from weather_records 
where ts >= '2017-11-05 00:00' and ts <= '2017-11-06 00:00';
