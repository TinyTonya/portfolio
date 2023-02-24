/*  Занести для книги «Стихотворения и поэмы» Лермонтова жанр «Поэзия», а для книги «Остров сокровищ» Стивенсона - «Приключения». (Использовать два запроса).

*/

update book
set genre_id =(
select genre_id from genre
where name_genre = 'Поэзия')
where title = 'Стихотворения и поэмы' and author_id =(
    select author_id from author
    where name_author = 'Лермонтов М.Ю.');
  update book
set genre_id =(
select genre_id from genre
where name_genre = 'Приключения')
where title = 'Остров сокровищ' and author_id =(
    select author_id from author
    where name_author = 'Стивенсон Р.Л.');  
    select * from book;





