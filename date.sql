
SHOW timezone

select now()

CREATE TABLE TimeZ (ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone)

INSERT INTO TimeZ VALUES('2024-01-12 10:45:00','2024-01-12 10:45:00')

SELECT * FROM TimeZ

DELETE FROM TimeZ

SELECT now()

SELECT CURRENT_DATE

select now()::date

select now()::time

select now()::time zone

select to_char (now(),'dd/mm/yyyy')

select to_char(now(),'DDD')

select to_char(now(),'Month')

select current_date - INTERVAL '1 year'

SELECT age(current_date, '2001-07-06')

select * from students

select *, age(current_date,dob) from students

select extract(year FROM '2025-06-12'::date)

select extract(day FROM '2025-06-12'::date)