/* Занести в таблицу fine суммы штрафов, которые должен оплатить водитель, в соответствии с данными из таблицы traffic_violation. При этом суммы заносить только в пустые поля столбца  sum_fine. */

update fine f, traffic_violation t set
f.sum_fine=t.sum_fine
where f.sum_fine is null and f.violation=t.violation;
select * from fine;





