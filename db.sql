-- create database
create database SellWater;

-- create table drink_tab
create table if not exists drink_tab(
    id INT PRIMARY KEY AUTOINCREMENT,
    drink_name varchar(128) not null,
    price int not null,
    image_link varchar(256) not null,
    category_id int REFERENCES category_tab(id)
    discount int not null
)



-- create table category_tab
create table if not exists category_tab(
    id int PRIMARY KEY AUTOINCREMENT,
    category_name varchar(128) not null,
    image_link varchar(256) not null
)

-- create table blog_tab
create table if not exists blog_tab(
    id int PRIMARY KEY AUTOINCREMENT,
    blog_title varchar(1024) not null,
    content varchar(max) not null,
    created_time datetime DEFAULT CURRENT_DATE(),
    image_link varchar(256) not null,
)

-- create table order_tab

create table if not exists order_tab(
    id int primary key AUTOINCREMENT,
    char_id varchar(50) not null,
    phone varchar(15) not null,
    address varchar(256) not null,
)

-- create table orderitem ( when 1 order have many item)

create table if not exists order_item(
    id int PRIMARY KEY AUTOINCREMENT,
    order_id int REFERENCES order_tab(id),
    drink_id int REFERENCES drink(id),
    quantity int not null,
)

-- create table feedback
create table if not EXISTS feedback_tab(
    id int PRIMARY KEY AUTOINCREMENT,
    order_id int REFERENCES order_tab(id),
    star int(1,5) default 5,
    comment varchar(max) DEFAULT "",
)




