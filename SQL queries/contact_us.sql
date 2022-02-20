
CREATE TABLE contact_us(
    id int auto_increment,
    DT      timestamp     not null default  CURRENT_TIMESTAMP,
    message varchar(400) not null,

    constraint contact_us_pk primary key (id,DT)
);

INSERT INTO contact_us (message) VALUES ('היי, רציתי לכתוב שהיה ממש טעים');
INSERT INTO contact_us (message) VALUES ('שלום, תחזרו אליי בבקשה למספר 0526879594');
INSERT INTO contact_us (message) VALUES ('רציתי להציע לכם לעשות עוגה עם חלווה ובוטנים בציפוי ובפנים מוס חלבה עם נגיעות בוטנים ,יכול להיות טעיייייייייייייייייים ');
INSERT INTO contact_us (message) VALUES ('אפשר להוסיף לעוגה שלי כיתוב :מזל טוב על הציון 100 בקורס web ');
INSERT INTO contact_us (message) VALUES ('שלום אני רוצה להזמין עוגה למרצה הכי טוב באוניברסיטת בן גוריו-ארסני ולמתרגלת המדהימה-לי ,אנא חזרי אלי למספר 052-6988437 ');
INSERT INTO contact_us (message) VALUES ('ציפיתי ליותר מילוי');
INSERT INTO contact_us (message) VALUES ('למה אתם משתמשים בנוטלה במקום השחר  ');
INSERT INTO contact_us (message) VALUES ('אשמח שתוסיפו עוד אופציות טבעוניות');
INSERT INTO contact_us (message) VALUES ('תודה על הקינוח בחינם שצירפתם להזתמנה שלי');


