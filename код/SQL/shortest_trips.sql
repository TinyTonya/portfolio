/* Вывести информацию о командировках сотрудника(ов), которые были самыми короткими по времени. В результат включить столбцы name, city, date_first, date_last. */

select name, city, date_first, date_last 
from trip
where datediff(date_last, date_first)+1 =(
    select min(datediff(date_last, date_first)+1) 
    from trip);




