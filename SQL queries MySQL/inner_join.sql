/* Вывести название, жанр и цену тех книг, количество которых больше 8, в отсортированном по убыванию цены виде.

*/

select book.title, genre.name_genre, book.price 
from book inner join genre on book.genre_id = genre.genre_id
where book.amount>8
order by book.price DESC;




