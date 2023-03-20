/* Вывести информацию о книгах (название книги, фамилию и инициалы автора, название жанра, цену и количество экземпляров книги), написанных в самых популярных жанрах, в отсортированном в алфавитном порядке по названию книг виде. Самым популярным считать жанр, общее количество экземпляров книг которого на складе максимально. */

select title, name_author, name_genre, price, amount from author
inner join book on author.author_id=book.author_id
inner join genre on genre.genre_id=book.genre_id
group by title, name_author, name_genre, price, amount, genre.genre_id
having genre.genre_id in (
select q1.genre_id 
from
(
    SELECT genre_id, SUM(amount) AS sum_amount
      FROM book
      GROUP BY genre_id
)q1
    INNER JOIN 
    (
        SELECT genre_id, SUM(amount) AS sum_amount
      FROM book
      GROUP BY genre_id
      ORDER BY sum_amount DESC
      LIMIT 1
    )q2
      on q1.sum_amount= q2.sum_amount)
      order by title
