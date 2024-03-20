create table Customers(
	customer_id serial primary key,
	customer_name varchar(1000), 
	city varchar(1000)
);

create table Orders(
	order_id serial primary key,
	customer_id integer,
	order_date date not null,
	total_amount decimal
);

insert into Customers(customer_name, city)
values 	('John Doe', 'New York'),
		('Jane Smith', 'Los Angeles'),
		('David Johnson', 'Chicago')

insert into Orders(customer_id, order_date, total_amount)
values 	(1, '2022-01-10', 100.00),
		(1, '2022-02-15', 150.00),
		(2, '2022-03-20', 200.00),
		(3, '2022-04-25', 50.00)

select customer_name, count(total_amount) as total_order
from Customers as c
inner join Orders as o on c.customer_id = o.customer_id
group by customer_name
order by customer_name desc;