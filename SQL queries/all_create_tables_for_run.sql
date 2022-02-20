-- TABLE 1- classes ----------
create table classes(
    class_name Varchar (45) not null,
    class_date Varchar (45) not null,
    class_time Varchar (45) not null,
    num_of_participants int not null default 0 null,
    max_participants int not null,
    CONSTRAINT classes_pk PRIMARY KEY (class_name,class_date,class_time)
);

-- TABLE 2- classes_contact ----------
create table classes_contact
(
    id int auto_increment,
    DT timestamp NOT NULL default  CURRENT_TIMESTAMP,
    Full_name varchar(45) not null,
    phone     varchar(10) not null,
    constraint course_contact_pk primary key (id,DT)
);

-- TABLE 3- products ----------
create table products
(
    product_category    int          not null,
    product_id          int          not null,
    product_name        varchar(45)  not null,
    product_price       int          not null,
    constraint product_pk primary key (product_id)
);

-- TABLE 4- cakes ----------
create table cakes
(
    product_category          int          not null,
    product_id          int          not null,
    product_discription       varchar(255)  null,
    product_img       varchar(255)          null,
    product_name       varchar(255)          not null,
     product_price       int          not null,
    constraint cakes_fk foreign key (product_id) references products(product_id),
    constraint cakes_pk primary key (product_id)
);

-- TABLE 5- users----------
create table users(
    user_email Varchar (45) not null,
    Fname Varchar (45) not null,
    Lname Varchar (45) not null,
    phone Varchar (10),
    password Varchar (45) not null,
    BirthDate date,
    constraint users_pk primary key (user_email)
);

-- TABLE 6- shape_table ----------
CREATE TABLE shape_table(
  `shape_id` int  NOT NULL,
  `value` varchar(45) NOT NULL,
  PRIMARY KEY (`shape_id`)
);

-- TABLE 7- extra_table ----------
CREATE TABLE extra_table(
  `extra_id` int NOT NULL,
  `value` varchar(45) NOT NULL,
  PRIMARY KEY (`extra_id`)
);

-- TABLE 8- flavor_table ----------
CREATE TABLE flavor_table(
  `flavor_id`int NOT NULL,
  `value` varchar(45) NOT NULL,
  PRIMARY KEY (`flavor_id`)
);

-- TABLE 9- language_table ----------
CREATE TABLE language_table(
  `language_id` int NOT NULL,
  `value` varchar(45) NOT NULL,
  PRIMARY KEY (`language_id`)
);

-- TABLE 10- size_table ----------
CREATE TABLE size_table(
  `size_id` int   not NULL,
  `value` varchar(45) NOT NULL,
  PRIMARY KEY (`size_id`)
);

-- TABLE 11- customized_cakes ----------
CREATE TABLE customized_cakes(
    user_email Varchar (45) not null,
    transaction_number         int  auto_increment,
    product_category    int  not null,
    shape varchar(45) not null,
    extra varchar(45) not null,
    flavor varchar(45) not null,
    language varchar(45) not null,
    size varchar(45) not null,
    write_us varchar(455),
    constraint user_fk foreign key (user_email) references users(user_email),
    constraint customized_cakes_pk primary key (transaction_number)
);

-- TABLE 12- contact_us ----------
CREATE TABLE contact_us(
    id int auto_increment,
    DT      timestamp     not null default  CURRENT_TIMESTAMP,
    message varchar(400) not null,

    constraint contact_us_pk primary key (id,DT)
);

-- TABLE 13- shopping_cart ----------
CREATE TABLE shopping_cart(
    transaction_number int auto_increment primary key ,
    user_email varchar(45) not null,
    product_id          int          not null,
    constraint shopping_cart_fk2 foreign key (user_email) references users(user_email),
    constraint shopping_cart_fk1 foreign key (product_id) references products(product_id)
);

-- TABLE 14- orders ----------
create table orders(
    order_id int auto_increment,
    DT timestamp     NOT NULL default  CURRENT_TIMESTAMP,
    fullname_order Varchar (45) not null,
    email_order Varchar (45) not null,
    phone_order Varchar (10) not null,
    street_order Varchar (45) not null,
    city_order Varchar (45) not null,
    state_order Varchar (45) ,
    zip_order Varchar (45),
    user_email Varchar (45) not null,
    totalPrice float not null,
    constraint orders_fk foreign key (user_email) references users(user_email),
    constraint orders_pk primary key (order_id)
);

-- TABLE 15- items_in_order ----------
create table items_in_order(
    order_id int,
    product_id          int          not null,
    quantity int NOT NULL,

    constraint items_in_order_fk1 foreign key (order_id) references orders(order_id),
    constraint items_in_order_fk2 foreign key (product_id) references products(product_id),
    constraint items_in_order_pk primary key (order_id,product_id)
);

-- TABLE 16- participents_in_class ----------
create table participents_in_class(
    user_email varchar(45) not null,
    class_name Varchar (45) not null,
    class_date Varchar (45) not null,
    class_time Varchar (45) not null,
     DT      timestamp     not null default  CURRENT_TIMESTAMP,
    constraint participents_in_class_fk1 foreign key (class_name,class_date,class_time) REFERENCES classes(class_name,class_date,class_time),
    constraint  participents_in_class_fk2 foreign key (user_email) references users(user_email),
    CONSTRAINT participents_in_class_pk PRIMARY KEY (user_email,class_name,class_date,class_time)
);

-- TABLE 17- gallery ----------
create table gallery
(
    product_id          int          not null,
    product_img       varchar(255)          null,
    constraint gallery_pk primary key (product_id)
);

-- TABLE 18- question----------
create table question
(
    question_id          int          not null,
    question       varchar(450)         not null,
    answer       varchar(450)         not null,
    constraint question_pk primary key (question_id)
);

