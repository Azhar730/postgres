CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)

INSERT INTO
    students (
        first_name,
        last_name,
        age,
        grade,
        course,
        email,
        dob,
        blood_group,
        country
    )
VALUES (
        'Ayesha',
        'Rahman',
        20,
        'A+',
        'Computer Science',
        'ayesha.rahman@example.com',
        '2004-03-15',
        'O+',
        'Bangladesh'
    ),
    (
        'Imran',
        'Hossain',
        22,
        'B+',
        'Mathematics',
        'imran.hossain@example.com',
        '2002-06-10',
        'A-',
        'Bangladesh'
    ),
    (
        'Jannat',
        'Ferdous',
        19,
        'A',
        'Physics',
        'jannat.ferdous@example.com',
        '2005-01-25',
        'B+',
        'Bangladesh'
    ),
    (
        'Mehedi',
        'Hasan',
        21,
        'B-',
        'Chemistry',
        'mehedi.hasan@example.com',
        '2003-02-18',
        'AB+',
        'Bangladesh'
    ),
    (
        'Nusrat',
        'Jahan',
        23,
        'C+',
        'Biology',
        'nusrat.jahan@example.com',
        '2001-11-05',
        'O-',
        'Bangladesh'
    ),
    (
        'Tanvir',
        'Ahmed',
        20,
        'A-',
        'Economics',
        'tanvir.ahmed@example.com',
        '2004-07-22',
        'A+',
        'Bangladesh'
    ),
    (
        'Rima',
        'Sultana',
        22,
        'B+',
        'Political Science',
        'rima.sultana@example.com',
        '2002-04-12',
        'B-',
        'Bangladesh'
    ),
    (
        'Sakib',
        'Alam',
        21,
        'A+',
        'Engineering',
        'sakib.alam@example.com',
        '2003-05-17',
        'AB-',
        'Bangladesh'
    ),
    (
        'Farzana',
        'Yesmin',
        20,
        'A',
        'Architecture',
        'farzana.yesmin@example.com',
        '2004-08-09',
        'O+',
        'Bangladesh'
    ),
    (
        'Anik',
        'Mahmud',
        24,
        'C',
        'Law',
        'anik.mahmud@example.com',
        '2000-09-01',
        'A+',
        'Bangladesh'
    ),
    (
        'Shuvo',
        'Khan',
        19,
        'B+',
        'Business Studies',
        'shuvo.khan@example.com',
        '2005-12-22',
        'B+',
        'Bangladesh'
    ),
    (
        'Maria',
        'Noor',
        20,
        'A-',
        'International Relations',
        'maria.noor@example.com',
        '2004-10-03',
        'AB+',
        'Bangladesh'
    ),
    (
        'Hasan',
        'Kabir',
        22,
        'B',
        'Journalism',
        'hasan.kabir@example.com',
        '2002-06-30',
        'O-',
        'Bangladesh'
    ),
    (
        'Rafi',
        'Islam',
        23,
        'C-',
        'Sociology',
        'rafi.islam@example.com',
        '2001-02-27',
        'A-',
        'Bangladesh'
    ),
    (
        'Sadia',
        'Akter',
        21,
        'B+',
        'Anthropology',
        'sadia.akter@example.com',
        '2003-01-13',
        'B+',
        'Bangladesh'
    ),
    (
        'Omar',
        'Faruk',
        20,
        'A+',
        'Software Engineering',
        'omar.faruk@example.com',
        '2004-05-20',
        'O+',
        'Bangladesh'
    ),
    (
        'Taslima',
        'Nasrin',
        19,
        'A',
        'Linguistics',
        'taslima.nasrin@example.com',
        '2005-03-28',
        'AB-',
        'Bangladesh'
    ),
    (
        'Nayeem',
        'Chowdhury',
        21,
        'B-',
        'History',
        'nayeem.chowdhury@example.com',
        '2003-07-14',
        'A+',
        'Bangladesh'
    ),
    (
        'Sanjida',
        'Haque',
        22,
        'B+',
        'Philosophy',
        'sanjida.haque@example.com',
        '2002-08-18',
        'B-',
        'Bangladesh'
    ),
    (
        'Adnan',
        'Rahim',
        23,
        'C+',
        'Education',
        'adnan.rahim@example.com',
        '2001-10-29',
        'O+',
        'Bangladesh'
    );
SELECT email,age FROM students

SELECT email as "Student Email",age as "Student Age" FROM students

SELECT * FROM students ORDER BY age ASC;
SELECT * FROM students ORDER BY first_name ASC;
SELECT DISTINCT age FROM students;

SELECT first_name,blood_group,course FROM students
    WHERE blood_group ='A+' AND course = 'Law'

SELECT student_id,first_name,course,age FROM students
    WHERE (course = 'Physics' or course = 'Chemistry') AND age>20

SELECT upper(first_name) as "First Name" ,* FROM students

SELECT concat(first_name,' ',last_name) as "Full Name" ,* FROM students

SELECT length(first_name) as "First Name Length" ,* FROM students

-- aggregate
SELECT avg(age) as "Average Age" FROM students

SELECT max(age) as "Maximum Age" FROM students

SELECT sum(age) as "Sum of Age" FROM students

SELECT count(*) as "Total Student" FROM students

SELECT max(length(first_name)) as "Maximum length of first name" FROM students

SELECT * FROM students

SELECT *  FROM students
    WHERE NOT course = 'Mathematics'

SELECT *  FROM students
    WHERE NOT course = 'Mathematics' AND NOT course = 'Physics'

-- Use of (NULL)
SELECT * FROM students
    WHERE email IS NULL;
SELECT * FROM students
    WHERE email IS NOT NULL;

SELECT COALESCE(email, 'Email not provided') as email,first_name from students

SELECT * FROM students WHERE course = 'Chemistry' or course='Biology' or course = 'Economics';

SELECT * FROM students WHERE course IN('Chemistry','Biology','Law')

SELECT * FROM students WHERE course NOT IN('Chemistry','Biology','Law')

SELECT * FROM students
    WHERE age BETWEEN 19 and 23 ORDER BY age ASC

SELECT * FROM students
    WHERE dob BETWEEN '2001-11-05' and '2002-06-30' ORDER BY dob ASC

SELECT * FROM students
    WHERE first_name LIKE 'M%'

SELECT * FROM students
    WHERE first_name LIKE '%ia' ORDER BY student_id DESC

SELECT * FROM students
    WHERE first_name LIKE '_a%a'

SELECT * FROM students
    WHERE first_name ILIKE '_A%A'

SELECT * FROM students LIMIT 5 OFFSET 5*0

SELECT * FROM students LIMIT 5 OFFSET 5*1

SELECT * FROM students

DELETE FROM students
    WHERE grade = 'C+'

--  Update
UPDATE students
    SET age = '60'
        WHERE student_id = 1

UPDATE students
    SET age = '60', course= 'Physics'
        WHERE student_id = 1

select * from students