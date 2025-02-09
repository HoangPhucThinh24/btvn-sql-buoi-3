create database btvn2;

create table products (
    id int primary key auto_increment,
    name varchar(255) not null,
    category varchar(100) not null,
    price decimal(10,2) not null,
    stock int not null
);

insert into products (name, category, price, stock) values
('Điện thoại ghẻ', 'Điện thoại', 1, 0),
('Laptop cũ', 'Laptop', 2, 2),
('Máy giặt hỏng', 'Máy giặt', 3, 3),
('Tivi vỡ', 'Tivi', 4, 4),
('Loa mất tiếng', 'Loa', 5, 5);

update products set price = price * 1.10  where id = 2;

delete from products where stock = 0;

select*from Products where Price = (select min(Price) from Products);

select*from Products where Price = (select max(Price) from Products);

select (stock), avg(price) from products;

select * from products where price > 100 order by price desc;

select * from products order by price asc; /* tăng */

select * from products order by price desc; /* giảm */

select * from products where price > (select avg(price) from products);





