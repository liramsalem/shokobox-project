


create table users(
    user_email Varchar (45) not null,
    Fname Varchar (45) not null,
    Lname Varchar (45) not null,
    phone Varchar (10),
    password Varchar (45) not null,
    BirthDate date,
    constraint users_pk primary key (user_email)
);

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



