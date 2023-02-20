/* Удалить из таблицы fine информацию о нарушениях, совершенных раньше 1 февраля 2020 года. 

*/

delete from fine
where date_violation < "2020-02-01";
select * from fine;




