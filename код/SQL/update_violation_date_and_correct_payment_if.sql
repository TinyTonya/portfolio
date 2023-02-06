/* Водители оплачивают свои штрафы. В таблице payment занесены даты их оплаты:

payment_id	name	        number_plate	violation	                       date_violation	   date_payment
1	        Яковлев Г.Р.	М701АА	        Превышение скорости(от 20 до 40)	2020-01-12	       2020-01-22
2	        Баранов П.Е.	Р523ВТ	        Превышение скорости(от 40 до 60)	2020-02-14	       2020-03-06
3	        Яковлев Г.Р.	Т330ТТ	        Проезд на запрещающий сигнал	    2020-03-03	       2020-03-23
Необходимо:

в таблицу fine занести дату оплаты соответствующего штрафа из таблицы payment; 
уменьшить начисленный штраф в таблице fine в два раза  (только для тех штрафов, информация о которых занесена в таблицу payment) , 
если оплата произведена не позднее 20 дней со дня нарушения */

update fine as f, payment as p set
f.date_payment = p.date_payment, f.sum_fine=if(datediff(p.date_payment, p.date_violation)<=20,f.sum_fine/2, f.sum_fine)
where f.name=p.name and f.number_plate=p.number_plate and f.violation=p.violation and f.date_violation=p.date_violation;

select name, violation, sum_fine, date_violation, date_payment from fine;

