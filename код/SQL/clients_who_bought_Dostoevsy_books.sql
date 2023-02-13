/* Выбрать всех клиентов, которые заказывали книги Достоевского, информацию вывести в отсортированном по алфавиту виде. В решении используйте фамилию автора, а не его id.

*/

select distinct(name_client) 
from client
inner join buy using (client_id)
inner join buy_book using (buy_id)
inner join book using (book_id)
inner join author using (author_id)
where book_id in (
select distinct(buy_book.buy_id) 
from buy_book
left join book using (book_id)
inner join author using (author_id)
where name_author like 'Достоевский%')
order by name_client