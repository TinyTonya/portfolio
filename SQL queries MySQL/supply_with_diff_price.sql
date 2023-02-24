/* Для книг, которые уже есть на складе (в таблице book), но по другой цене, чем в поставке (supply),  необходимо в таблице book увеличить количество на значение, указанное в поставке,  и пересчитать цену. А в таблице  supply обнулить количество этих книг. Формула для пересчета цены */

SELECT * FROM book;

SELECT * FROM supply;
update book
inner join supply on book.title=supply.title
inner join author using (author_id)
set book.amount=book.amount+supply.amount,
book.price=(book.price*book.amount+supply.price*supply.amount)/(book.amount+supply.amount),
supply.amount=0
where book.price <> supply.price and supply.author=author.name_author;
SELECT * FROM book;

SELECT * FROM supply;






