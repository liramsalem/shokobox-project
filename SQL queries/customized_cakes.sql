
CREATE TABLE shape_table(
  `shape_id` int  NOT NULL,
  `value` varchar(45) NOT NULL,
  PRIMARY KEY (`shape_id`)
);
INSERT INTO shape_table(shape_id,value) VALUES (1, 'לב');
INSERT INTO shape_table(shape_id,value) VALUES (2,'עיגול');
INSERT INTO shape_table(shape_id,value) VALUES (3,'ריבוע');


CREATE TABLE extra_table(
  `extra_id` int NOT NULL,
  `value` varchar(45) NOT NULL,
  PRIMARY KEY (`extra_id`)
);

INSERT INTO extra_table(extra_id,value) VALUES(1, 'סוכריות צובעניות');
INSERT INTO extra_table(extra_id,value) VALUES(2, 'קישוטי בצק סוכר');
INSERT INTO extra_table(extra_id,value) VALUES(3, 'שוקולדים');


CREATE TABLE flavor_table(
  `flavor_id`int NOT NULL,
  `value` varchar(45) NOT NULL,
  PRIMARY KEY (`flavor_id`)
);

INSERT INTO flavor_table(flavor_id,value) VALUES (1, 'וניל');
INSERT INTO flavor_table(flavor_id,value) VALUES (2, 'שוקולד');
INSERT INTO flavor_table(flavor_id,value) VALUES (3, 'תות');
INSERT INTO flavor_table(flavor_id,value) VALUES (4, 'פירות');
INSERT INTO flavor_table(flavor_id,value) VALUES (5, 'פיסטוק');

CREATE TABLE language_table(
  `language_id` int NOT NULL,
  `value` varchar(45) NOT NULL,
  PRIMARY KEY (`language_id`)
);

INSERT INTO language_table (language_id,value) VALUES (1, 'עברית');
INSERT INTO language_table (language_id,value) VALUES (2, 'אנגלית');

CREATE TABLE size_table(
  `size_id` int   not NULL,
  `value` varchar(45) NOT NULL,
  PRIMARY KEY (`size_id`)
);

INSERT INTO size_table (size_id,value) VALUES (10, 'קומה אחת');
INSERT INTO size_table (size_id,value) VALUES (11, 'שתי קומות');
INSERT INTO size_table (size_id,value) VALUES (12, 'שלוש קומות');

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


