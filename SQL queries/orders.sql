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

