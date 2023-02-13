/* Создать таблицу заказ (ordering), куда включить авторов и названия тех книг, количество экземпляров которых в таблице book меньше среднего количества экземпляров книг в таблице book. В таблицу включить столбец   amount, в котором для всех книг указать одинаковое значение - среднее количество экземпляров книг в таблице book. */

create table ordering as
select author, title, amount from book
where amount < (select avg(amount) from book);
update ordering set amount = (select avg(amount) from book);
select * from ordering;




