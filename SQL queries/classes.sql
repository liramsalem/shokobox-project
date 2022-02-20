

create table classes(
    class_name Varchar (45) not null,
    class_date Varchar (45) not null,
    class_time Varchar (45) not null,
    num_of_participants int not null default 0 null,
    max_participants int not null,
    CONSTRAINT classes_pk PRIMARY KEY (class_name,class_date,class_time)
);


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



