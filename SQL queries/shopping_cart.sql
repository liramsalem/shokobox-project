CREATE TABLE shopping_cart(
    transaction_number int auto_increment primary key ,
    user_email varchar(45) not null,
    product_id          int          not null,
    constraint shopping_cart_fk2 foreign key (user_email) references users(user_email),
    constraint shopping_cart_fk1 foreign key (product_id) references products(product_id)
);


INSERT INTO shopping_cart (product_id,user_email) VALUES (3,'Roy.Avigdorov@gmail.com');
INSERT INTO shopping_cart (product_id,user_email) VALUES (3,'Roy.Avigdorov@gmail.com');

INSERT INTO shopping_cart (product_id,user_email) VALUES (1,'Lobracha.Yam@gmail.com');

INSERT INTO shopping_cart (product_id,user_email) VALUES (1,'Lir.Amsalem@gmail.com');
INSERT INTO shopping_cart (product_id,user_email) VALUES (2,'Lir.Amsalem@gmail.com');

INSERT INTO shopping_cart (product_id,user_email) VALUES (1,'Tzlil.Simka@gmail.com');

INSERT INTO shopping_cart (product_id,user_email) VALUES (1,'Lee.Malka@gmail.com');

INSERT INTO shopping_cart (product_id,user_email) VALUES (1,'Ravit.Amos@gmail.com');

INSERT INTO shopping_cart (product_id,user_email) VALUES (2,'Alon.Zimbambwa@gmail.com');

INSERT INTO shopping_cart (product_id,user_email) VALUES (2,'Lobracha.Yam@gmail.com');

INSERT INTO shopping_cart (product_id,user_email) VALUES (1,'Mot.Ilohim@gmail.com');

INSERT INTO shopping_cart (product_id,user_email) VALUES (2,'Arseni.Lecture@gmail.com');
