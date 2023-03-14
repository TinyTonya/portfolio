/* Вывести авторов, пишущих книги в самом популярном жанре. Указать этот жанр.

Самым популярным считать жанр, общее количество экземпляров книг которого на складе максимально. Таких жанров может быть несколько, если они имеют одинаковое максимальное значение общего количества экземпляров. */

select name_author, name_genre from author
inner join book on author.author_id=book.author_id
inner join genre on genre.genre_id=book.genre_id
group by name_author, name_genre, genre.genre_id
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
 
 