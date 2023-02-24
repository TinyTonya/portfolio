/* Вывести информацию о командировках, начало и конец которых относятся к одному месяцу (год может быть любой). В результат включить столбцы name, city, date_first, date_last. Строки отсортировать сначала  в алфавитном порядке по названию города, а затем по фамилии сотрудника . */
select name, city, date_first, date_last
from trip
where month(date_first)=month(date_last)
order by city, name;
