
insert into author (name_author)
select supply.author from supply left join author on supply.author=author.name_author
where author.name_author is Null;
select * from author;





