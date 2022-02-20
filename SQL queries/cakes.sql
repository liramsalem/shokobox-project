

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


insert into cakes(product_category,product_id,product_discription,product_img,product_name,product_price) values (3,1,'7 זוגות מקרונים בטעמי תות, שקדים, לימון, בורלה, פסיפלורה ושוקלד בלונדי.','Product/media/cakes_cokis3.jpeg','מקרוני שקיעה',50);
insert into cakes(product_category,product_id,product_discription,product_img,product_name,product_price) values (3,2,'עוגיות שוקלד צ’יפס זהובות בתוספת נטיפי שוקולד מריר איכותיים, קראנצ’יות וממכרות.','Product/media/cakes_cokis2.webp','עוגיות שוקולד ציפס',35);
insert into cakes(product_category,product_id,product_discription,product_img,product_name,product_price) values (3,3,'עוגיות ארגנטינאיות סופר נימוחות ממולאות בריבת חלב ומגולגלות בקוקוס.
מארז 290 גרם.','Product/media/cakes_cokis1.webp','האלפחורס המושלמות',38);
insert into cakes(product_category,product_id,product_discription,product_img,product_name,product_price) values (2,4,'עוגה איטלקית מסורתית על בסיס עוגיות בישקוטי טבולות בליקר קפה,
מוס גבינת מסקרפונה ואספרסו מעוטרת בקצפת ואבקת קקאו.','Product/media/cakes_mos-krem3.webp','מוס טירמיסו איטלקי',165);
insert into cakes(product_category,product_id,product_discription,product_img,product_name,product_price) values (2,5,'עוגת מוס שוקולד חלב בצורת גלגל ובעיצוב מיוחד,
גנאש שוקולד חלב במילוי הפתעות כדורי שוקולד, ציפוי גנאש וקישוטים משמחים.','Product/media/cakes_mos-krem2.webp','מוס חגיגת שוקולדים',165);
insert into cakes(product_category,product_id,product_discription,product_img,product_name,product_price) values (2,6,'עוגה על בסיס בצק חמאה פריך, מוס גבינה עדין ובציפוי קונפיטורת פירות יער.','Product/media/cakes_mos-krem1.webp','מוס גבינת פירות יער',129);
insert into cakes(product_category,product_id,product_discription,product_img,product_name,product_price) values (1,7,'סוגי שוקולדים ופרלינים טעימים טעימים עם קרם ביאנקה מעל','Product/media/cakes_pass3.jpeg','קראנץ שמרים',60);
insert into cakes(product_category,product_id,product_discription,product_img,product_name,product_price) values (1,8,'מלית קרם שקדים עשירה ושקדים קצוצים בבצק קראנץ מופלא.','Product/media/cakes_pass2.jpg','קראנץ שקדים',44);
insert into cakes(product_category,product_id,product_discription,product_img,product_name,product_price) values (1,9,'סטריפ פירות מהמם, על בסיס קרם שקדים ומרציפן אפוי,
וקרם פטיסייר עם קצפת מונחים בקומפוזיציה צבעונית של מבחר מפירות העונה.', 'Product/media/cakes_pass1.jpg','סטריפ פאי פירות מלכותי',68);

