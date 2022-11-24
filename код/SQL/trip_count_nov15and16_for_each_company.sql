select cabs.company_name, 
count(trips.trip_id) as trips_amount   
FROM cabs 
INNER JOIN trips ON cabs.cab_id = trips.cab_id 
WHERE cast(trips.start_ts as date) >= '2017-11-15' and cast(trips.start_ts as date) < '2017-11-17' 
GROUP BY cabs.company_name 
ORDER BY trips_amount DESC;
