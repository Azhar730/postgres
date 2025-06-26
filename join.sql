-- Active: 1748704629501@@127.0.0.1@5432@ph
CREATE Table "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
)

CREATE Table post(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    -- user_id INTEGER REFERENCES "user"(id) on delete CASCADE
    -- user_id INTEGER REFERENCES "user"(id) on delete set NULL
    user_id INTEGER REFERENCES "user"(id) on delete set DEFAULT DEFAULT 2
)

ALTER Table post
    alter column user_id set not null

insert INTO "user" (username) VALUES
('akash'),
('batash'),
('sagor'),
('nodi')

SELECT * from "user"

INSERT into post (title,user_id) VALUES
('Enjoying a sunny day with akash !', 2),
('Batash just shared an amazing recipe!', 1),
('Exploring adventure with sagor!', 4),
('Nodi''s wisdom always leaves me inspired !',4)

 SELECT * FROM post

 SELECT * FROM "user"

 SELECT * FROM post
    JOIN "user" ON post.user_id = "user".id

 SELECT title, username FROM post
    JOIN "user" ON post.user_id = "user".id

SELECT "user".id FROM post
    JOIN "user" on post.user_id = "user".id

SELECT * FROM post as p
    JOIN "user" as u on p.user_id = u.id

SELECT * FROM post as p
   INNER JOIN "user" as u on p.user_id = u.id

INSERT into post (title,user_id) VALUES
('Enjoying a sunny day with Pritom !', null)

INSERT into post (title,user_id) VALUES
('Enjoying a sunny day with Pritom !', 3)

INSERT INTO "user" (username) values('Pahar')

SELECT * from post as p
    LEFT JOIN "user" as u on p.user_id = u.id

SELECT * from post as p
    RIGHT JOIN "user" as u on p.user_id = u.id

SELECT * from post as p
    FULL JOIN "user" as u on p.user_id = u.id