/* Вывести фамилию с инициалами и общую сумму суточных, полученных за все командировки для тех сотрудников, которые были в командировках больше чем 3 раза, в отсортированном по убыванию сумм суточных виде. Последний столбец назвать Сумма. */

select name, sum(per_diem * (datediff(date_last, date_first)+1)) as Сумма from trip
where name in (
    select name from trip 
group by name
having count(name)>3)
group by name
order by Сумма DESC;




