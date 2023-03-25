/* Сравнить ежемесячную выручку от продажи книг за текущий и предыдущий годы. Для этого вывести год, месяц, сумму выручки в отсортированном сначала по возрастанию месяцев, затем по возрастанию лет виде. Название столбцов: Год, Месяц, Сумма.
*/


select year(date_step_end) as Год, monthname(date_step_end) AS Месяц, sum(buy_book.amount*book.price) AS Сумма
from buy_step
inner join buy_book using (buy_id)
inner join book using (book_id)
where step_id=1 and date_step_end is not null
group by year(date_step_end), monthname(date_step_end)
union all
select year(date_payment) as Год, monthname(date_payment) AS Месяц, sum(buy_archive.amount*buy_archive.price) AS Сумма
from buy_archive
group by year(date_payment), monthname(date_payment)
order by Месяц, Год