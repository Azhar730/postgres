-- Active: 1748704629501@@127.0.0.1@5432@ph
SELECT * FROM person

ALTER TABLE person
ADD COLUMN email VARCHAR(25) DEFAULT 'email@gmail.com' NOT NULL

INSERT INTO person VALUES ( 2, 'Mahmud', 25, 'mahmud@gmail.com' )

ALTER TABLE person DROP COLUMN email

ALTER TABLE person RENAME COLUMN user_name to person_name

ALTER TABLE person
ALTER COLUMN person_name type VARCHAR(20);

alter Table person
alter COLUMN age set NOT NULL

alter Table person
alter COLUMN age DROP NOT NULL

alter TABLE person
    ADD constraint unique_person_age UNIQUE(age)

alter TABLE person
    DROP constraint unique_person_age