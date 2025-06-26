SELECT * FROM students

select course, count(*) from students
    GROUP BY course;
select grade, count(*) from students
    GROUP BY grade;

SELECT country, count(*), avg(age) from students
    GROUP BY country
        HAVING avg(age)>21

-- Count students born in each year
SELECT extract (year FROM dob) as birth_year, count(*) FROM students
    GROUP BY birth_year