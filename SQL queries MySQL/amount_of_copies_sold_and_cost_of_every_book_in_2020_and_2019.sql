/* Для каждой отдельной книги необходимо вывести информацию о количестве проданных экземпляров и их стоимости за 2020 и 2019 год . Вычисляемые столбцы назвать Количество и Сумма. Информацию отсортировать по убыванию стоимости.

*/

select distinct(t.title), sum(Количество) as Количество, sum(Сумма) as Сумма
from 
(select distinct(book.title), sum(buy_book.amount) as Количество, sum(buy_book.amount * book.price) as Сумма
from book
inner join buy_book using (book_id)
inner join buy using (buy_id)
inner join buy_step using (buy_id)
where step_id=1 and date_step_end is not null
group by book.title
union all
select distinct(book.title), sum(buy_archive.amount) as Количество, sum(buy_archive.amount * buy_archive.price) as Сумма
from buy_archive
inner join book using (book_id)
group by book.title)t
group by t.title
order by sum(Сумма) DESC





