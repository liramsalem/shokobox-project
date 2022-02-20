create table products
(
    product_category    int          not null,
    product_id          int          not null,
    product_name        varchar(45)  not null,
    product_price       int          not null,
    constraint product_pk primary key (product_id)
);


insert into products(product_category,product_id,product_name,product_price) values (3,1,'מקרוני שקיעה',50);
insert into products(product_category,product_id,product_name,product_price) values (3,2,'עוגיות שוקולד ציפס',35);
insert into products(product_category,product_id,product_name,product_price) values (3,3,'האלפחורס המושלמות',38);
insert into products(product_category,product_id,product_name,product_price) values (2,4,'מוס טירמיסו איטלקי',165);
insert into products(product_category,product_id,product_name,product_price) values (2,5,'מוס חגיגת שוקולדים',165);
insert into products(product_category,product_id,product_name,product_price) values (2,6,'מוס גבינה פירות יער',129);
insert into products(product_category,product_id,product_name,product_price) values (1,7,'קראנץ שמרים',60);
insert into products(product_category,product_id,product_name,product_price) values (1,8,'קראנץ שקדים',44);
insert into products(product_category,product_id,product_name,product_price) values (1,9,'סטריפ פאי פירות מלכותי',68);
insert into products(product_category,product_id,product_name,product_price) values (4,10,'קומה אחת',300);
insert into products(product_category,product_id,product_name,product_price) values (4,11,'שתי קומות',400);
insert into products(product_category,product_id,product_name,product_price) values (4,12,'שלוש קומות',500);