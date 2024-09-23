create database Bookstore

--Create tables
create table authors 
(author_id int primary key identity(1,1),
first_name varchar(50),
last_name varchar(50),
birth_date date);


create table books
(book_id int primary key identity(1,1),
title varchar(120),
author_id int,
published_date date,
price decimal,
genre varchar(50));

alter table books
add foreign key (author_id) references authors(author_id);
ALTER TABLE books ALTER COLUMN price decimal(4,2);


create table customers 
(customer_id int primary key identity(1,1),
first_name varchar(50),
last_name varchar(50),
email varchar(75),
phone_number varchar(13));


create table orders
(order_id int primary key identity(1,1),
customer_id int,
order_date date,
total_amount decimal);

alter table orders
add foreign key (customer_id) references customers(customer_id);
ALTER TABLE orders ALTER COLUMN total_amount decimal(5,2);



create table order_items
(order_item_id int primary key identity(1,1),
order_id int,
book_id int,
quantity int,
item_price decimal);

alter table order_items
add foreign key (order_id) references orders(order_id);

alter table order_items 
add foreign key (book_id) references books(book_id);
ALTER TABLE order_items ALTER COLUMN item_price decimal(4,2);

--Insert Data into tables
insert into authors
(first_name, last_name, birth_date)
values('William', 'Shakespeare', '1564-04-23');

insert into authors
(first_name, last_name, birth_date)
values('Jane', 'Austen', '1775-12-16');

insert into authors
(first_name, last_name, birth_date)
values('Charles', 'Dickens', '1812-02-07');

insert into authors
(first_name, last_name, birth_date)
values('Mark', 'Twain', '1835-11-30');

insert into authors
(first_name, last_name, birth_date)
values('Leo', 'Tolstoy', '1828-09-09');

insert into authors
(first_name, last_name, birth_date)
values('J.K.', 'Rowling', '1965-07-31');

insert into authors
(first_name, last_name, birth_date)
values('George', 'Orwell', '1903-06-25');

insert into authors
(first_name, last_name, birth_date)
values('J.R.R.', 'Tolkien', '1892-01-03');

insert into authors
(first_name, last_name, birth_date)
values('Gabriel Garcia', 'Marquez', '1927-03-06');

insert into authors
(first_name, last_name, birth_date)
values('Agatha', 'Christie', '1890-09-15');

insert into books
(title, author_id, published_date, price, genre)
values('Hamlet', 31, '1600', 10.99, 'Tradgedy');

insert into books
(title, author_id, published_date, price, genre)
values('Macbeth', 31, '1620', 9.99, 'Tradgedy');

insert into books
(title, author_id, published_date, price, genre)
values('Romeo and Juliet', 31, '1597', 11.99, 'Tradgedy');

insert into books
(title, author_id, published_date, price, genre)
values('Pride and Prejudice', 32, '1813', 12.99, 'Romance');

insert into books
(title, author_id, published_date, price, genre)
values('Sense and Sensibility', 32, '1811', 11.99, 'Romance');

insert into books
(title, author_id, published_date, price, genre)
values('Emma', 32, '1816', 13.99, 'Romance');

insert into books
(title, author_id, published_date, price, genre)
values('A tale of Two Cities', 33, '1859', 14.99, 'Historical Fiction');

insert into books
(title, author_id, published_date, price, genre)
values('Great Expectations', 33, '1861', 13.99, 'Novel');

insert into books
(title, author_id, published_date, price, genre)
values('Oliver Twist', 33, '1837', 12.99, 'Novel');


insert into books
(title, author_id, published_date, price, genre)
values('The Adventures of Tom Sawyer', 34, '1876', 11.99, 'Adventure');


insert into books
(title, author_id, published_date, price, genre)
values('Adventures of Huckleberry Finn', 34, '1884', 12.99, 'Adventure');


insert into books
(title, author_id, published_date, price, genre)
values('The Prince and the Pauper', 34, '1881', 10.99, 'Historical fiction');

insert into books
(title, author_id, published_date, price, genre)
values('War and Peace', 35, '1869', 19.99, 'Fiction');

insert into books
(title, author_id, published_date, price, genre)
values('Anna Karenina', 35, '1877', 18.99, 'Novel');

insert into books
(title, author_id, published_date, price, genre)
values('The Cossacks', 35, '1863', 15.99, 'Novel');

insert into books
(title, author_id, published_date, price, genre)
values('Harry Potter and the Sorcerer"s Stone', 35, '1997', 24.99, 'Fantasy');

insert into books
(title, author_id, published_date, price, genre)
values('Harry Potter and the Chamber of Secrets', 35, '1998', 25.99, 'Fantasy');

insert into books
(title, author_id, published_date, price, genre)
values('Harry Potter and the Prisoner of Azkaban', 35, '1999', 26.99, 'Fantasy');

update books
set author_id = 36
where title ='Harry Potter and the Sorcerer"s Stone'

update books
set author_id = 36
where title='Harry Potter and the Chamber of Secrets'

update books
set author_id = 36
where title = 'Harry Potter and the Prisoner of Azkaban'


insert into books
(title, author_id, published_date, price, genre)
values('1984', 37, '1949', 15.99, 'Dystopian Fiction');

insert into books
(title, author_id, published_date, price, genre)
values('Animal Farm', 37, '1945', 14.99, 'Satire');

insert into books
(title, author_id, published_date, price, genre)
values('Homage to Catalonia', 37, '1938', 16.99, 'Memoir');

insert into books
(title, author_id, published_date, price, genre)
values('The Hobbit', 38, '1937', 22.99, 'Fantasy');

insert into books
(title, author_id, published_date, price, genre)
values('The Lord of the Rings: The Fellowship of the Ring', 38, '1954', 25.99, 'Fantasy');

insert into books
(title, author_id, published_date, price, genre)
values('The Lord of the Rings: The Two Towers', 38, '1954', 25.99, 'Fantasy');

insert into books
(title, author_id, published_date, price, genre)
values('The Lord of the Rings: The Return of the King', 38, '1955', 25.99, 'Fantasy');


insert into books
(title, author_id, published_date, price, genre)
values('One Hundred Years of Solitude', 39, '1967', 17.99, 'Magical Realism');

insert into books
(title, author_id, published_date, price, genre)
values('Love in the Time of Cholera', 39, '1985', 16.99, 'Romance');

insert into books
(title, author_id, published_date, price, genre)
values('Chronicle of a Death Foretold', 39, '1981', 15.99, 'Novel');

insert into books
(title, author_id, published_date, price, genre)
values('Murder on the Orient Express', 40, '1934', 12.99, 'Mystery');

insert into books
(title, author_id, published_date, price, genre)
values('And Then There Were None', 40, '1939', 13.99, 'Mystery');

insert into books
(title, author_id, published_date, price, genre)
values('The Murder of Roger Ackroyd', 40, '1926', 14.99, 'Mystery');

insert into customers
(first_name, last_name, email, phone_number)
values('John', 'Smith', 'john.smith@example.com', '555-123-4567');

insert into customers
(first_name, last_name, email, phone_number)
values('Emily', 'Johnson', 'emily.johnson@example.com', '555-234-5678');

insert into customers
(first_name, last_name, email, phone_number)
values('Michael', 'Brown', 'michael.brown@example.com', '555-345-6789');

insert into customers
(first_name, last_name, email, phone_number)
values('Sarah', 'Davis', 'sarah.davis@example.com', '555-456-7890');

insert into customers
(first_name, last_name, email, phone_number)
values('David', 'Wilson', 'david.wilson@example.com', '555-567-8901');

insert into customers
(first_name, last_name, email, phone_number)
values('Laura', 'Martinez', 'laura.martinez@example.com', '555-678-9012');

insert into customers
(first_name, last_name, email, phone_number)
values('James', 'Anderson', 'james.anderson@example.com', '555-789-0123');

insert into customers
(first_name, last_name, email, phone_number)
values('Sophia', 'Thomas', 'sophia.thomas@example.com', '555-890-1234');

insert into customers
(first_name, last_name, email, phone_number)
values('Daniel', 'Taylor', 'daniel.taylor@example.com', '555-901-2345');

insert into customers
(first_name, last_name, email, phone_number)
values('Olivia', 'Moore', 'olivia.moore@example.com', '555-012-3456');


insert into order_items
(order_id, book_id, quantity, item_price)
values(1, 28, 1, 22.99);

insert into order_items
(order_id, book_id, quantity, item_price)
values(1, 25, 2, 15.99);

insert into order_items
(order_id, book_id, quantity, item_price)
values(2, 10, 3, 12.99);

insert into order_items
(order_id, book_id, quantity, item_price)
values(2, 35, 1, 12.99);

insert into order_items
(order_id, book_id, quantity, item_price)
values(3, 22, 1, 24.99);

insert into order_items
(order_id, book_id, quantity, item_price)
values(3, 12, 1, 13.99);

insert into order_items
(order_id, book_id, quantity, item_price)
values(4, 29, 2, 25.99);

insert into order_items
(order_id, book_id, quantity, item_price)
values(4, 14, 1, 13.99);

insert into order_items
(order_id, book_id, quantity, item_price)
values(5, 19, 1, 19.99);

insert into order_items
(order_id, book_id, quantity, item_price)
values(5, 32, 1, 17.99);

insert into order_items
(order_id, book_id, quantity, item_price)
values(6, 37, 2, 14.99);

insert into order_items
(order_id, book_id, quantity, item_price)
values(6, 21, 1, 15.99);

insert into order_items
(order_id, book_id, quantity, item_price)
values(7, 16, 1, 11.99);

insert into order_items
(order_id, book_id, quantity, item_price)
values(7, 33, 1, 16.99);

insert into order_items
(order_id, book_id, quantity, item_price)
values(8, 18, 2, 10.99);

insert into order_items
(order_id, book_id, quantity, item_price)
values(8, 31, 1, 25.99);

insert into order_items
(order_id, book_id, quantity, item_price)
values(9, 34, 1, 15.99);

insert into order_items
(order_id, book_id, quantity, item_price)
values(9, 17, 1, 12.99);

insert into order_items
(order_id, book_id, quantity, item_price)
values(10, 11, 2, 11.99);

insert into order_items
(order_id, book_id, quantity, item_price)
values(10, 26, 1, 14.99);


insert into orders
(customer_id, order_date, total_amount)
values(11, '2024-08-01', 54.97);

insert into orders
(customer_id, order_date, total_amount)
values(12, '2024-08-02', 51.96);

insert into orders
(customer_id, order_date, total_amount)
values(13, '2024-08-03', 38.98);

insert into orders
(customer_id, order_date, total_amount)
values(14, '2024-08-04', 65.97);

insert into orders
(customer_id, order_date, total_amount)
values(15, '2024-08-05', 37.98);

insert into orders
(customer_id, order_date, total_amount)
values(16, '2024-08-06', 45.97);

insert into orders
(customer_id, order_date, total_amount)
values(17, '2024-08-07', 28.98);

insert into orders
(customer_id, order_date, total_amount)
values(18, '2024-08-08', 47.97);

insert into orders
(customer_id, order_date, total_amount)
values(19, '2024-08-09', 28.98);

insert into orders
(customer_id, order_date, total_amount)
values(20, '2024-08-10', 38.97);

