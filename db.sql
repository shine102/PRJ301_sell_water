-- create database
create database SellWater;
-- create table category_tab
create table category_tab(
    id int PRIMARY KEY IDENTITY(1,1),
    category_name varchar(128) not null,
    image_link varchar(256) not null
);
-- create sample data

INSERT INTO category_tab (category_name, image_link) 
                  VALUES ('coffee', 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656841765/category/coffee/coffee_pb08wk.png'); 


-- create table drink_tab
create table drink_tab(
    id INT PRIMARY KEY IDENTITY(1,1),
    drink_name varchar(128) not null,
    price int not null,
    image_link varchar(256) not null,
    category_id int REFERENCES category_tab(id)
);

-- create sample data

INSERT INTO drink_tab (drink_name, price, image_link, category_id)  
                VALUES('Ca phe sua da', 29000, 'https://res.cloudinary.com/dimxnh34h/image/upload/v1656927874/category/coffee/caphesuada_u9vbwb.jpg', 1);

-- create table blog_tab
create table blog_tab(
    id int PRIMARY KEY IDENTITY(1,1),
    blog_title varchar(1024) not null,
    content varchar(max) not null,
    created_time datetime DEFAULT GetDate(),
    image_link varchar(256) not null,
);

INSERT INTO blog_tab(blog_title, content, image_link)
              VALUES('', '', '')

-- create table order_tab

create table order_tab(
    id int primary key IDENTITY(1,1),
    char_id varchar(63),
    phone varchar(15) not null,
    address varchar(256) not null
);

-- create table orderitem ( when 1 order have many item)

create table order_item(
    id int PRIMARY KEY IDENTITY(1,1),
    order_id int REFERENCES order_tab(id),
    drink_id int REFERENCES drink_tab(id),
    quantity int not null
);

-- create table feedback
create table feedback_tab(
    id int PRIMARY KEY IDENTITY(1,1),
    order_id int REFERENCES order_tab(id),
    star int default 5,
    comment varchar(max) DEFAULT '',
);




