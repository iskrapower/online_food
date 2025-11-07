create database online_food_database;
use online_food_database;

create table Item(
	itemId int not null primary key auto_increment,
    name varchar(150),
    description varchar(4000),
    unit_price int not null,
    item_image blob
);

create table Customer(
	customerId int not null primary key auto_increment,
    name varchar(150),
    profile blob
);

create table OrderItems(
	orderId int not null primary key auto_increment,
    itemId int not null,
    customerId int not null,
    delivery_status varchar(100),
    quantity int not null,
    foreign key (itemId) references Item(itemId),
    foreign key (customerId) references Customer(customerId)
);

insert into item(name, description, unit_price, item_image) value (
    'Watermelon', 'Very delicious', 100, 'c:\Users\Student\Documents\images\watermellon.jpg'
);
