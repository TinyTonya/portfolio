delete from author
where author_id in (
    select author_id from book
    where genre_id =(
        select genre_id from genre
        where name_genre='Поэзия')
    group by author_id);
    select * from book;
    select * from author;




/* Удалить всех авторов, которые пишут в жанре "Поэзия". Из таблицы book удалить все книги этих авторов. В запросе для отбора авторов использовать полное название жанра, а не его id.*/