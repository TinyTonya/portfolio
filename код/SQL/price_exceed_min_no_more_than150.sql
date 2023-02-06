/* Вывести информацию (автора, название и цену) о тех книгах, 
цены которых превышают минимальную цену книги на складе не более чем на 150 рублей в отсортированном по возрастанию цены виде. */

Select author, title, price
From book
Where price <= (select min(price)+150 from book)
Order by price;