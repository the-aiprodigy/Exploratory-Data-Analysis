SELECT * FROM student;

DROP TABLE student;

CREATE TABLE student (
    student_id INT AUTO_INCREMENT,
    name VARCHAR(20), 
    major VARCHAR(20) DEFAULT 'Undecided',
    PRIMARY KEY (student_id)
);


INSERT INTO student(name, major) VALUES('Jack', 'Biology');

INSERT INTO student(name, major) VALUES('Kate', 'Sociology');
INSERT INTO student(name) VALUES('Claire');

INSERT INTO student(name, major) VALUES('Jack', 'Biology');

INSERT INTO student(name, major) VALUES('Mike', 'Computer Science');

UPDATE student
SET major = 'Bio'
WHERE major = 'Biology';

UPDATE student
SET major = 'Physics'
WHERE student_id = 4;

UPDATE student
SET major = 'Biochemisty'
WHERE major = 'Bio' or major = 'Chemistry';

UPDATE student
SET name = 'Tom', major = 'Undecided'
WHERE student_id = 1;

UPDATE student
SET major = 'Undecided';

DELETE FROM student
WHERE student_id = 5;

DELETE FROM student
WHERE name = 'Tom' AND major = 'Undecided';


SELECT name, major
FROM student
ORDER BY name DESC;

SELECT name, major
FROM student
ORDER BY student_id;