/* Создать новую таблицу back_payment, куда внести информацию о неоплаченных штрафах (Фамилию и инициалы водителя, номер машины, нарушение, сумму штрафа  и  дату нарушения) из таблицы fine.

*/



create table back_payment as
select name, number_plate, violation, sum_fine, date_violation
from fine
where date_payment is null;
select * from back_payment;


