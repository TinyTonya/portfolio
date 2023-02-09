/* Вывести в алфавитном порядке всех авторов, которые пишут только в одном жанре.  */

select name_author from author
where author_id in (
select author_id from (
select author_id, count(distinct genre_id) from book 
group by author_id
having count(distinct genre_id)=1) as new)