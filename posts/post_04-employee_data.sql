CREATE TABLE EMPLOYEE (
  empId INT PRIMARY KEY,
  name VARCHAR(25),
  dept VARCHAR(25),
  salary INT,
  rating INT CONSTRAINT CK_EMPLOYEE_rating CHECK (rating BETWEEN 1 AND 5)
);

INSERT INTO EMPLOYEE (empId, name, dept, salary, rating) VALUES
-- Software Development Engineer (SDE)
(1, 'Zaara', 'SDE 1', 1800000, 3),
(2, 'Aarav', 'SDE 2', 3800000, 4),
(3, 'Priya', 'SDE 3', 6500000, 5),
(4, 'Rohan', 'Lead SDE', 8500000, 5),
-- Forward Deployed Engineer (FDE)
(5, 'Neha', 'FDE 1', 2200000, 3),
(6, 'Vikram', 'FDE 2', 4200000, 4),
(7, 'Ananya', 'FDE 3', 7000000, 5),
-- Data Analyst
(8, 'Kabir', 'Data Analyst 1', 900000, 2),
(9, 'Isha', 'Data Analyst 2', 1800000, 3),
(10, 'Yashvi', 'Sr Data Analyst', 3000000, 4),
-- Data Engineer
(11, 'Meera', 'Data Engineer 1', 1400000, 3),
(12, 'Aditya', 'Data Engineer 2', 2800000, 4),
(13, 'Kavya', 'Sr Data Engineer', 4800000, 4),
(14, 'Veer', 'Lead Data Engineer', 7200000, 5),
-- Data Scientist
(15, 'Riya', 'Data Scientist 1', 1600000, 3),
(16, 'Dev', 'Data Scientist 2', 3200000, 4),
(17, 'Tanvi', 'Sr Data Scientist', 5500000, 5),
-- Machine Learning Engineer (MLE)
(18, 'Arjun', 'MLE 1', 2000000, 3),
(19, 'Sanya', 'MLE 2', 4000000, 4),
(20, 'Karan', 'Sr MLE', 6800000, 5),
-- AI Engineer
(21, 'Tarushi', 'AI Engineer 1', 2200000, 3),
(22, 'Yash', 'AI Engineer 2', 4500000, 4),
(23, 'Simran', 'Sr AI Engineer', 7500000, 5),
-- Applied AI Engineer
(24, 'Rahul', 'Applied AI Eng 1', 2500000, 3),
(25, 'Pooja', 'Applied AI Eng 2', 5000000, 4),
(26, 'Nikhil', 'Sr Applied AI Eng', 8200000, 5),
(27, 'Shreya', 'Lead Applied AI Eng', 11000000, 5);

SELECT AVG(salary) AS avg_salary, AVG(rating) AS avg_rating FROM EMPLOYEE;

ALTER TABLE EMPLOYEE ALTER COLUMN salary DECIMAL(18,2);

ALTER TABLE EMPLOYEE DROP CONSTRAINT CK_EMPLOYEE_rating; -- drop the CHECK constraint so the column type can change
ALTER TABLE EMPLOYEE ALTER COLUMN rating DECIMAL(3,2);
ALTER TABLE EMPLOYEE ADD CONSTRAINT CK_EMPLOYEE_rating CHECK (rating BETWEEN 1 AND 5);

SELECT AVG(salary) AS avg_salary, AVG(rating) AS avg_rating FROM EMPLOYEE;
