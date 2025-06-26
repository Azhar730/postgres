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

INSERT into post (title,user_id) VALUES ('test',1)

DELETE from post
 where user_id is NULL



select * from post

 DELETE FROM "user"
    WHERE id = 2

DROP Table "user"

drop table post

SELECT * from post

SELECT * from "user"

 DELETE FROM post
    WHERE user_id = 4