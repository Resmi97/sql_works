use university;
CREATE TABLE EngineeringStudents (
	  Student_ID		INT				NOT NULL,
      Department 		VARCHAR(25),
      First_Name 		VARCHAR(25),
      Last_Name 		VARCHAR(25),
      PassOutYear 		INT				NOT NULL,
      UniversityRank 	INT 			NOT NULL,
      PRIMARY KEY (Student_ID)
);

INSERT INTO EngineeringStudents VALUES (10201, 'CSE', 'Kiran', 'Acharya', 2018, 1272);
INSERT INTO EngineeringStudents VALUES (10202, 'ISE', 'Chaintanya', 'Pujar', 2019, 773);
INSERT INTO EngineeringStudents VALUES (10203, 'Mech', 'Trever', 'Krugger', 2020, 1275);
INSERT INTO EngineeringStudents VALUES (10204, 'ECE', 'John', 'Denver', 2021, 539);
INSERT INTO EngineeringStudents VALUES (10205, 'Electrical', 'Raju', 'Kumar', 2018, 98);
INSERT INTO EngineeringStudents VALUES (10206, 'CSE', 'Jennifer', 'Charles', 2018, 1372);
INSERT INTO EngineeringStudents VALUES (10207, 'CSE', 'Chaintanya', 'Pujar', 2019, 1773);
INSERT INTO EngineeringStudents VALUES (10208, 'Mech', 'Tom', 'Steven', 2020, 1223);
INSERT INTO EngineeringStudents VALUES (10209, 'ECE', 'John', 'Conner', 2021, 1539);
INSERT INTO EngineeringStudents VALUES (10210, 'ISE', 'Raju', 'Chaturvedi', 2018, 1098);
INSERT INTO EngineeringStudents VALUES (10211, 'CSE', 'Kiran', 'Banerji', 2018, 1332);
INSERT INTO EngineeringStudents VALUES (10212, 'ISE', 'Sowmya', 'Kumari', 2019, 721);
INSERT INTO EngineeringStudents VALUES (10213, 'ISE', 'Jayson', 'Robert', 2020, 2275);
INSERT INTO EngineeringStudents VALUES (10214, 'ECE', 'Praveen', 'Kumar', 2021, 1249);
INSERT INTO EngineeringStudents VALUES (10215, 'CSE', 'Rajath', 'Kumar', 2018, 2218);

select * from EngineeringStudents;