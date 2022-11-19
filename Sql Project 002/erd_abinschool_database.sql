-- Create new Schema

CREATE SCHEMA abinschool_studentdata;
USE abinschool_studentdata;


-- create "student information" table

CREATE TABLE student_information (
	student_id INT NOT NULL,
    first_name VARCHAR (20),
    last_name VARCHAR (20),
    gender VARCHAR (5),
    date_of_birth DATE,
    street VARCHAR (50),
	city VARCHAR (20),
    state VARCHAR (20),
	zip_code INT,
    phone_number VARCHAR(12),
    roll_no VARCHAR (6),
    date_of_admission DATE,
    subject_code VARCHAR (2),
    PRIMARY KEY (student_id)
);



 -- create "all_subject" table
 
CREATE TABLE all_subject (
subject_code VARCHAR (2) NOT NULL,
subject_name VARCHAR (10),
PRIMARY KEY (subject_code)                   
);


-- Create "assignment" table

CREATE TABLE assignment (
	student_id INT,
	roll_no VARCHAR (6),
	as_name VARCHAR (50),
	as_status VARCHAR (20),
	data_of_submitted DATE
);



-- Add values "all_subject" table

INSERT INTO all_subject (subject_code, subject_name)
VALUES ('#H', 'history'), 
	('#E', 'english'),
    ('#M','math'),
    ('#G', 'geography');



-- Add values "student_information" table

INSERT INTO student_information (student_id, first_name, last_name, gender, date_of_birth, street, city, state, zip_code, phone_number, roll_no, date_of_admission, subject_code)
VALUES (1101, 'James', 'Miller', 'M', '2006-10-04', '4546 Spring Haven Trail', 'Newark', 'New Jersey', 07102, '973-651-8095', 'A02201', '2020-06-10', '#M'),
	(1102, 'Ava', 'Lopez', 'F', '2006-07-19', '3128 Felosa Drive', 'Christoval', 'Texas', 76935, '325-255-2927', 'B06701', '2020-06-09', '#G'),
	(1103, 'Lucas', 'Wilson', 'M', '2007-12-27', '2536 Saint Francis Way', 'La Crescenta', 'California', 91214, '262-968-3368', 'G01191', '2020-06-17', '#E'),
	(1104, 'Marco', 'Taylor', 'M', '2005-05-25', '2674 Twin Oaks Drive', 'Clam River', 'Michigan', 49612, '231-377-4122', 'A02202', '2020-06-10','#M'),
	(1108, 'Ethan', 'Lee', 'M', '2005-05-03', '4915 Beeghley Street', 'Coolidge', 'Texas', 76635, '254-786-3981', 'B06702', '2020-06-09', '#G'),
	(1201, 'Mia', 'Clark', 'F', '2006-10-19', '2560 Saint Francis Way', 'La Crescenta', 'California', 91214, '262-968-8738', 'F18997', '2020-06-11', '#H'),
	(1202, 'Emma', 'Anderson', 'F', '2005-01-17', '420 Haul Road', 'Mountain View', 'California', 94041, '650-964-6822', 'F18998', '2020-06-11', '#H'),
	(1205, 'Henry', 'Baker', 'M', '2005-02-03', '3119 Felosa Drive', 'Christoval', 'Texas',76935, '325-255-8991', 'B06703', '2020-06-09', '#G'),
	(1308, 'Olivia', 'Roberts', 'F', '2005-09-19', '420 Haul Road', 'Mountain View', 'California', 94041, '650-970-7899', 'G01192', '2020-06-17', '#E'),
	(1309, 'Jacob', 'Scott', 'M', '2007-03-20', '4624 Spring Haven Trail', 'Newark', 'New Jersey', 07203, '973-690-9045', 'A02203',' 2020-06-10', '#M');
    


-- Add values "assignment" table

INSERT INTO assignment (student_id, roll_no, as_name, as_status, data_of_submitted)
VALUES (1101, 'A02201', 'Pythagoras theorem', 'submitted','2022-04-12'),
	(1102, 'B06701', 'Case study on cyclone fani', 'not submitted', NULL),
	(1103, 'G01191', 'Research the top 5 poets of the world', 'not submitted', NULL),
	(1104, 'A02202', 'Pythagoras theorem', 'submitted','2022-04-12'),
	(1108, 'B06702', 'Case study on cyclone fani', 'submitted','2022-04-15'),
	(1201, 'F18997', 'Biography of Alexander the great', 'submitted','2022-04-13'),
	(1202, 'F18998', 'Biography of Alexander the great', 'submitted','2022-04-13'),
	(1205, 'B06703', 'Case study on cyclone fani', 'submitted','2022-04-15'),
	(1308, 'G01192', 'Research the top 5 poets of the world', 'submitted','2022-04-12'),
	(1309, 'A02203', 'Pythagoras theorem', 'not submitted', NULL);




   

