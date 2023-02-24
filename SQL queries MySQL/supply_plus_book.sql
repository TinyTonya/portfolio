/*  Если в таблицах supply  и book есть одинаковые книги, которые имеют равную цену,  вывести их название и автора, а также посчитать общее количество экземпляров книг в таблицах supply и book,  столбцы назвать Название, Автор  и Количество.

*/

select book.title as Название, author.name_author as Автор, sum(book.amount+supply.amount) as Количество from author
inner join book using (author_id)
inner join supply on supply.author=author.name_author and supply.price=book.price
where book.title=supply.title and book.price=supply.price
group by book.title, author.name_author





