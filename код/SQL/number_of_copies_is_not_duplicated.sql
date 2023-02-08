/* Вывести информацию (автора, книгу и количество) о тех книгах, 
количество экземпляров которых в таблице book не дублируется. */

SELECT author, title, amount
FROM book
WHERE amount IN (
        SELECT amount 
        FROM book 
        GROUP BY amount 
        HAVING count(amount) = 1
      );