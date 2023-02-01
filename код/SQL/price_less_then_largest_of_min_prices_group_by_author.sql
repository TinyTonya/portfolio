/* Вывести информацию о книгах(автор, название, цена), 
цена которых меньше самой большой из минимальных цен, вычисленных для каждого автора. */
 select author, title, price from book
where price < ANY (select min(price) 
    from book
    group by author)
    ;
