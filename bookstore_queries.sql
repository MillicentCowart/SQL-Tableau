-- Order by oldest to newest author
select first_name, last_name, birth_date 
from authors 
order by birth_date;
-- Order by least expensive to most enpensive book
select title, price
from books
order by price;
-- Order by ascending amount of customer purchase
select customer_id, total_amount
from orders
order by total_amount;


--Inner Join to view all inventory specifics
select books.title, published_date, price, genre, first_name, last_name, birth_date
from books
INNER JOIN authors ON books.author_id = authors.author_id;

--Inner Join to view customer orders
select orders.order_date, orders.total_amount, customers.first_name, customers.last_name, customers.email, customers.phone_number
from orders
INNER JOIN customers ON orders.customer_id = customers.customer_id;

--Left Join to add customer_id, order_date, and total_amount to order_items list. Then, left join to add all customer information.
with cte as
(
select order_items.book_id, order_items.quantity, order_items.item_price, orders.customer_id, orders.order_date, orders.total_amount
from order_items
LEFT JOIN orders ON order_items.order_id = orders.order_id
)

select a.book_id, a.quantity, a.item_price, a.order_date, a.total_amount, b.first_name, b.last_name, b.email, b.phone_number
from cte a
LEFT JOIN customers b ON a.customer_id = b.customer_id;



--Make the above table into a new table. Then, right join to include book information. Then finish big table.
with cte as
(
select order_items.book_id, order_items.quantity, order_items.item_price, orders.customer_id, orders.order_date, orders.total_amount
from order_items
LEFT JOIN orders ON order_items.order_id = orders.order_id
)

select a.book_id, a.quantity, a.item_price, a.order_date, a.total_amount, b.first_name, b.last_name, b.email, b.phone_number
into bigtable
from cte a
LEFT JOIN customers b ON a.customer_id = b.customer_id;


select title, author_id, published_date, genre, quantity, item_price, order_date, total_amount, first_name, last_name, email, phone_number
into bigtable2
from books 
RIGHT JOIN bigtable on books.book_id = bigtable.book_id;

select *
from bigtable2

EXEC sp_RENAME 'authors.first_name', 'Author_first_name', 'COLUMN';
EXEC sp_RENAME 'authors.last_name', 'Author_last_name', 'COLUMN';

select*from authors

select Author_first_name, Author_last_name, title, published_date, genre, quantity, item_price, order_date, total_amount, bigtable2.first_name, bigtable2.last_name, email, phone_number
into bigtable3
from authors
RIGHT JOIN bigtable2 on authors.author_id = bigtable2.author_id;



--How many books does the bookstore have in each genre?
SELECT genre, count(*)
FROM bigtable3
GROUP BY genre;

--Which genres does the bookstore only carry one of?
SELECT genre, count(*)
FROM bigtable3
GROUP BY genre
HAVING count(*) = 1;


--Total profit
select SUM(total_amount)
FROM orders;
--Average sale amount
select AVG(total_amount)
FROM orders;
--Largest and smallest order
select MIN(total_amount)
FROM bigtable3;
select MAX(total_amount)
FROM bigtable3;

--Change case of columns
update bigtable3 set title = upper(title);
update bigtable3 set genre = upper(genre);
update bigtable3 set email = lower(email);

--Check length of column
select len(title), title
from bigtable3;
select len(phone_number)
from bigtable3;

--Round total sale amount up or down
select total_amount, CEILING(total_amount)
from bigtable3;
select total_amount, FLOOR(total_amount)
from bigtable3;
--Round total sale amount to nearest whole number
select total_amount, ROUND(total_amount,0)
from bigtable3;

