-- INSERT TO TABLE 1- classes ----------

insert into classes(class_name, class_date, class_time,max_participants) values ('זילוף','16.12.21','12:00-16:00',6);
insert into classes(class_name, class_date, class_time,max_participants) values ('זילוף','16.12.21','17:00-21:00',6);
insert into classes(class_name, class_date, class_time,max_participants) values ('זילוף','25.12.21','12:00-16:00',6);
insert into classes(class_name, class_date, class_time,max_participants) values ('זילוף','25.12.21','17:00-21:00',6);

insert into classes(class_name, class_date, class_time,max_participants) values ('עוגות בחושות','17.12.21','09:00-13:00',6);
insert into classes(class_name, class_date, class_time,max_participants) values ('עוגות בחושות','17.12.21','14:00-18:00',6);
insert into classes(class_name, class_date, class_time,max_participants) values ('עוגות בחושות','22.12.21','12:00-16:00',6);
insert into classes(class_name, class_date, class_time,max_participants) values ('עוגות בחושות','22.12.21','17:00-21:00',6);

insert into classes(class_name, class_date, class_time,max_participants) values ('מיוחדים','18.12.21','12:00-16:00',6);
insert into classes(class_name, class_date, class_time,max_participants) values ('מיוחדים','18.12.21','17:00-21:00',6);
insert into classes(class_name, class_date, class_time,max_participants) values ('מיוחדים','26.12.21','12:00-16:00',6);
insert into classes(class_name, class_date, class_time,max_participants) values ('מיוחדים','26.12.21','17:00-21:00',6);

-- INSERT TO TABLE 2- classes_contact ----------

insert into classes_contact(Full_name,phone) values ('מירי הופמן','0542883993');
insert into classes_contact(Full_name,phone) values ('ירון אסולין','0548899000');
insert into classes_contact(Full_name,phone) values ('עודד פז','0523900666');
insert into classes_contact(Full_name,phone) values ('טל מוסרי','0544399876');
insert into classes_contact(Full_name,phone) values ('ירין כהן','0548777655');
insert into classes_contact(Full_name,phone) values ('יפית אמסלם','0543992599');
insert into classes_contact(Full_name,phone) values ('ים ברכה','0523988700');
insert into classes_contact(Full_name,phone) values ('מטי לוכים','0548577600');
insert into classes_contact(Full_name,phone) values ('אסף לוץ','0548542222');
insert into classes_contact(Full_name,phone) values ('לי מלכה','0544399212');

-- INSERT TO TABLE 3- products ----------

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

-- INSERT TO TABLE 4- cakes ----------

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

-- INSERT TO TABLE 5- users ----------

insert into users(Fname,Lname,phone,user_email,password,BirthDate) values ('רוי','אביגדור','0548577399','Roy.Avigdorov@gmail.com','23456223','1994-03-23');
insert into users(Fname,Lname,phone,user_email,password,BirthDate) values ('רוית','עמוס','0548399277','Ravit.Amos@gmail.com','34554433','1996-05-23');
insert into users(Fname,Lname,phone,user_email,password,BirthDate) values ('צליל','סימקה','0528577422','Tzlil.Simka@gmail.com','12345678','1994-03-18');
insert into users(Fname,Lname,phone,user_email,password,BirthDate) values ('ליר','אמסלם','0546599400','Lir.Amsalem@gmail.com','11456785','1996-11-28');
insert into users(Fname,Lname,phone,user_email,password,BirthDate) values ('ארסני','לקצר','0523994223','Arseni.Lecture@gmail.com','12568755','1991-08-14');
insert into users(Fname,Lname,phone,user_email,password) values ('אלון','זימבמבה','0543992599','Alon.Zimbambwa@gmail.com','1234f4g6');
insert into users(Fname,Lname,user_email,password,BirthDate) values ('ים','ברכה','Lobracha.Yam@gmail.com','det43ed4','1990-02-24');
insert into users(Fname,Lname,phone,user_email,password,BirthDate) values ('מוטי','לוכים','0548577600','Mot.Ilohim@gmail.com','234t5tfr','1992-06-19');
insert into users(Fname,Lname,user_email,password) values ('אסף','לוץ','Asaf.Lotz@gmail.com','1245tggy');
insert into users(Fname,Lname,user_email,password) values ('לי','מלכה','Lee.Malka@gmail.com','1234fvvr');
insert into users(Fname,Lname,user_email,password) values ('ליר','אמסלם','liramsalem@gmail.com','11111111');

-- INSERT TO TABLE 6- shape_table ----------

INSERT INTO shape_table(shape_id,value) VALUES (1, 'לב');
INSERT INTO shape_table(shape_id,value) VALUES (2,'עיגול');
INSERT INTO shape_table(shape_id,value) VALUES (3,'ריבוע');

-- INSERT TO TABLE 7- extra_table ----------

INSERT INTO extra_table(extra_id,value) VALUES(1, 'סוכריות צובעניות');
INSERT INTO extra_table(extra_id,value) VALUES(2, 'קישוטי בצק סוכר');
INSERT INTO extra_table(extra_id,value) VALUES(3, 'שוקולדים');

-- INSERT TO TABLE 8- flavor_table ----------

INSERT INTO flavor_table(flavor_id,value) VALUES (1, 'וניל');
INSERT INTO flavor_table(flavor_id,value) VALUES (2, 'שוקולד');
INSERT INTO flavor_table(flavor_id,value) VALUES (3, 'תות');
INSERT INTO flavor_table(flavor_id,value) VALUES (4, 'פירות');
INSERT INTO flavor_table(flavor_id,value) VALUES (5, 'פיסטוק');

-- INSERT TO TABLE 9- language_table ----------

INSERT INTO language_table (language_id,value) VALUES (1, 'עברית');
INSERT INTO language_table (language_id,value) VALUES (2, 'אנגלית');

-- INSERT TO TABLE 10- size_table ----------

INSERT INTO size_table (size_id,value) VALUES (10, 'קומה אחת');
INSERT INTO size_table (size_id,value) VALUES (11, 'שתי קומות');
INSERT INTO size_table (size_id,value) VALUES (12, 'שלוש קומות');

-- INSERT TO TABLE 11- customized_cakes ----------

INSERT INTO customized_cakes (user_email,product_category,shape,extra,flavor,language,size,write_us)
VALUES ('liramsalem@gmail.com',4,'עיגול','סוכריות צובעניות','וניל','עברית','קומה אחת','אלרגיה לבוטנים. כיתוב - מצטער שהדבקתי אותך בקורונה');
INSERT INTO customized_cakes (user_email,product_category,shape,extra,flavor,language,size,write_us)
VALUES ('Lobracha.Yam@gmail.com',4,'לב','קישוטי בצק סוכר','וניל','עברית','שתי קומות','כיתוב - איך פגשתי את אמא יותר טוב מחברים');
INSERT INTO customized_cakes (user_email,product_category,shape,extra,flavor,language,size,write_us)
VALUES ('Ravit.Amos@gmail.com',4,'לב','שוקולדים','פיסטוק','אנגלית','קומה אחת','כיתוב - pineapple is a must on pizza');
INSERT INTO customized_cakes (user_email,product_category,shape,extra,flavor,language,size,write_us)
VALUES ('Mot.Ilohim@gmail.com',4,'ריבוע','שוקולדים','פירות','עברית','קומה אחת','בבקשה הרבה הרבה שוקולדיםםם ! כיתוב - שנה אזרחית טובה!');
INSERT INTO customized_cakes (user_email,product_category,shape,extra,flavor,language,size,write_us)
VALUES ('Ravit.Amos@gmail.com',4,'עיגול','קישוטי בצק סוכר','פירות','אנגלית','שתי קומות','כיתוב - Congratz for 100 on WEB!!');
INSERT INTO customized_cakes (user_email,product_category,shape,extra,flavor,language,size,write_us)
VALUES ('Arseni.Lecture@gmail.com',4,'ריבוע','קישוטי בצק סוכר','שוקולד','עברית','שלוש קומות','כיתוב - מצטער שגנבתי לך את כל הקיסמים מהבית');

-- INSERT TO TABLE 12- contact_us ----------

INSERT INTO contact_us (message) VALUES ('היי, רציתי לכתוב שהיה ממש טעים');
INSERT INTO contact_us (message) VALUES ('שלום, תחזרו אליי בבקשה למספר 0526879594');
INSERT INTO contact_us (message) VALUES ('רציתי להציע לכם לעשות עוגה עם חלווה ובוטנים בציפוי ובפנים מוס חלבה עם נגיעות בוטנים ,יכול להיות טעיייייייייייייייייים ');
INSERT INTO contact_us (message) VALUES ('אפשר להוסיף לעוגה שלי כיתוב :מזל טוב על הציון 100 בקורס web ');
INSERT INTO contact_us (message) VALUES ('שלום אני רוצה להזמין עוגה למרצה הכי טוב באוניברסיטת בן גוריו-ארסני ולמתרגלת המדהימה-לי ,אנא חזרי אלי למספר 052-6988437 ');
INSERT INTO contact_us (message) VALUES ('ציפיתי ליותר מילוי');
INSERT INTO contact_us (message) VALUES ('למה אתם משתמשים בנוטלה במקום השחר  ');
INSERT INTO contact_us (message) VALUES ('אשמח שתוסיפו עוד אופציות טבעוניות');
INSERT INTO contact_us (message) VALUES ('תודה על הקינוח בחינם שצירפתם להזתמנה שלי');

-- INSERT TO TABLE 13- shopping_cart ----------

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

-- INSERT TO TABLE 14- orders ----------

insert into orders(fullname_order,email_order,phone_order,street_order,city_order,state_order,zip_order,user_email,totalPrice)
values ('רוי אביגדור','Roy.Avigdorov@gmail.com','0549873998','טור 10','קיסריה','ישראל','846283','Roy.Avigdorov@gmail.com', 134.45);

insert into orders(fullname_order,email_order,phone_order,street_order,city_order,state_order,zip_order,user_email,totalPrice)
values ('ים ברכה','Lobracha.Yam@gmail.com','0543222888','שוהם 17','יגור','ישראל','324544','Lobracha.Yam@gmail.com', 116.9);

insert into orders(fullname_order,email_order,phone_order,street_order,city_order,state_order,zip_order,user_email,totalPrice)
values ('ליר אמסלם','Lir.Amsalem@gmail.com','0523444200','המגניבה 50','שדרות','ישראל','123759','Lir.Amsalem@gmail.com', 240.92);

insert into orders(fullname_order,email_order,phone_order,street_order,city_order,state_order,zip_order,user_email,totalPrice)
values ('צליל סימקה','Tzlil.Simka@gmail.com','0528577422','החנונית 42','אור עקיבא','ישראל','542744','Tzlil.Simka@gmail.com', 228.05);

insert into orders(fullname_order,email_order,phone_order,street_order,city_order,state_order,zip_order,user_email,totalPrice)
values ('לי מלכה','Lee.Malka@gmail.com','0549873222','ארזים 10','תל אביב','ישראל','111283','Lee.Malka@gmail.com',93.5);

insert into orders(fullname_order,email_order,phone_order,street_order,city_order,state_order,zip_order,user_email,totalPrice)
values ('רוית עמוס','Ravit.Amos@gmail.com','0548399277','מכבים 6','באר שבע','ישראל','846283','Ravit.Amos@gmail.com',93.5);

insert into orders(fullname_order,email_order,phone_order,street_order,city_order,state_order,zip_order,user_email,totalPrice)
values ('מוטי לוכים','Mot.Ilohim@gmail.com','0548577600','משה דיין 7','באר שבע','ישראל','843483','Mot.Ilohim@gmail.com',93.5);

insert into orders(fullname_order,email_order,phone_order,street_order,city_order,state_order,zip_order,user_email,totalPrice)
values ('ארסני לקצר','Arseni.Lecture@gmail.com','0523994223','נילי 3','באר שבע','ישראל','103483','Arseni.Lecture@gmail.com',75.95);

-- INSERT TO TABLE 15- items_in_order ----------

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

-- INSERT TO TABLE 16- participents_in_class ----------

insert into participents_in_class(user_email, class_name, class_date, class_time) values ('Roy.Avigdorov@gmail.com', 'זילוף','16.12.21','12:00-16:00');
insert into participents_in_class( user_email, class_name, class_date, class_time) values ('Tzlil.Simka@gmail.com','זילוף','16.12.21','17:00-21:00');
insert into participents_in_class( user_email, class_name, class_date, class_time) values ('Ravit.Amos@gmail.com', 'עוגות בחושות','17.12.21','09:00-13:00');
insert into participents_in_class( user_email, class_name, class_date, class_time) values ('Alon.Zimbambwa@gmail.com','עוגות בחושות','22.12.21','12:00-16:00');
insert into participents_in_class( user_email, class_name, class_date, class_time) values ('Alon.Zimbambwa@gmail.com','מיוחדים','18.12.21','12:00-16:00');
insert into participents_in_class( user_email, class_name, class_date, class_time) values ('Mot.Ilohim@gmail.com','מיוחדים','26.12.21','17:00-21:00');

-- INSERT TO TABLE 17- gallery ----------

insert into gallery(product_id,product_img) values (1,'Gallery/media/customizedPage1.jpeg');
insert into gallery(product_id,product_img) values (2,'Gallery/media/customizedPage2.jpeg');
insert into gallery(product_id,product_img) values (3,'Gallery/media/customizedPage3.jpeg');
insert into gallery(product_id,product_img) values (4,'Gallery/media/customizedPage4.jpeg');
insert into gallery(product_id,product_img) values (5,'Gallery/media/customizedPage5.jpeg');
insert into gallery(product_id,product_img) values (6,'Gallery/media/customizedPage6.jpeg');
insert into gallery(product_id,product_img) values (7,'Gallery/media/customizedPage7.jpeg');
insert into gallery(product_id,product_img) values (8,'Gallery/media/customizedPage8.jpeg');
insert into gallery(product_id,product_img) values (9,'Gallery/media/customizedPage9.jpeg');
insert into gallery(product_id,product_img) values (10,'Gallery/media/customizedPage10.jpeg');

-- INSERT TO TABLE 18- question ----------

insert into question(question_id,question,answer) values (2,'כמה זמן מראש צריך להזמין ?','עוגה בעיצוב אישי דורשת תכנון מוקדם והכנת חומרי גלם בשלבים , לכן מומלץ לבצע הזמנה לפחות 4-5 ימים מראש.
 הזמנת עוגות מוכנות תלויה במלאי הקיים לשבוע. ');
insert into question(question_id,question,answer) values (3,'האם העוגות כשרות?', 'אין תעודת כשרות, אך העוגות מוכנות בחלקת חלבי ואין ערבוב של כלים בשריים וחלביים. ');
insert into question(question_id,question,answer) values (4,'תוך כמה ימי עסקים העוגה מגיעה ?', 'זמן האספקה של עוגה בעיצוב אישי הוא עד 5 ימי עסקים ושל עוגה מוכנה הוא יום עסקים. ');

