/* В таблице fine увеличить в два раза сумму неоплаченных штрафов 
тех водителей, которые на одной машине нарушили одно и то же правило   два и более раз. При этом учитывать все нарушения, независимо от того оплачены они или нет. */

update fine,(select name, number_plate, violation from fine
group by name, number_plate, violation
having count(*) >= 2) as new
set fine.sum_fine = fine.sum_fine*2
where fine.date_payment is null and fine.name=new.name and fine.number_plate=new.number_plate and fine.violation=new.violation;
select * from fine;





