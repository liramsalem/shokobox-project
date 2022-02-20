


create table classes_contact
(
    id int auto_increment,
    DT timestamp NOT NULL default  CURRENT_TIMESTAMP,
    Full_name varchar(45) not null,
    phone     varchar(10) not null,
    constraint course_contact_pk primary key (id,DT)
);


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