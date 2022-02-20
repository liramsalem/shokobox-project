create table question
(
    question_id          int          not null,
    question       varchar(450)         not null,
    answer       varchar(450)         not null,
    constraint question_pk primary key (question_id)
);

insert into question(question_id,question,answer) values (2,'כמה זמן מראש צריך להזמין ?','עוגה בעיצוב אישי דורשת תכנון מוקדם והכנת חומרי גלם בשלבים , לכן מומלץ לבצע הזמנה לפחות 4-5 ימים מראש.
 הזמנת עוגות מוכנות תלויה במלאי הקיים לשבוע. ');
insert into question(question_id,question,answer) values (3,'האם העוגות כשרות?', 'אין תעודת כשרות, אך העוגות מוכנות בחלקת חלבי ואין ערבוב של כלים בשריים וחלביים. ');
insert into question(question_id,question,answer) values (4,'תוך כמה ימי עסקים העוגה מגיעה ?', 'זמן האספקה של עוגה בעיצוב אישי הוא עד 5 ימי עסקים ושל עוגה מוכנה הוא יום עסקים. ');
