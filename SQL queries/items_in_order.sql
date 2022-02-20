

create table items_in_order(
    order_id int,
    product_id          int          not null,
    quantity int NOT NULL,

    constraint items_in_order_fk1 foreign key (order_id) references orders(order_id),
    constraint items_in_order_fk2 foreign key (product_id) references products(product_id),
    constraint items_in_order_pk primary key (order_id,product_id)
);

insert into items_in_order(order_id,product_id,quantity)
values (1,1,1);

insert into items_in_order(order_id,product_id,quantity)
values (1,2,1);

insert into items_in_order(order_id,product_id,quantity)
values (2,2,2);

insert into items_in_order(order_id,product_id,quantity)
values (3,3,2);

insert into items_in_order(order_id,product_id,quantity)
values (3,1,2);

insert into items_in_order(order_id,product_id,quantity)
values (4,4,1);

insert into items_in_order(order_id,product_id,quantity)
values (5,1,1);

insert into items_in_order(order_id,product_id,quantity)
values (6,1,1);

insert into items_in_order(order_id,product_id,quantity)
values (7,1,1);

insert into items_in_order(order_id,product_id,quantity)
values (8,2,1);









