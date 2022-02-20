

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


insert into participents_in_class(user_email, class_name, class_date, class_time) values ('Roy.Avigdorov@gmail.com', 'זילוף','16.12.21','12:00-16:00');
insert into participents_in_class( user_email, class_name, class_date, class_time) values ('Tzlil.Simka@gmail.com','זילוף','16.12.21','17:00-21:00');
insert into participents_in_class( user_email, class_name, class_date, class_time) values ('Ravit.Amos@gmail.com', 'עוגות בחושות','17.12.21','09:00-13:00');
insert into participents_in_class( user_email, class_name, class_date, class_time) values ('Alon.Zimbambwa@gmail.com','עוגות בחושות','22.12.21','12:00-16:00');
insert into participents_in_class( user_email, class_name, class_date, class_time) values ('Alon.Zimbambwa@gmail.com','מיוחדים','18.12.21','12:00-16:00');
insert into participents_in_class( user_email, class_name, class_date, class_time) values ('Mot.Ilohim@gmail.com','מיוחדים','26.12.21','17:00-21:00');


