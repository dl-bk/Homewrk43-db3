CREATE TABLE Departments(
	Id SERIAL PRIMARY KEY,
	Financing DECIMAL(10, 2) NOT NULL DEFAULT 0 CHECK(Financing >= 0),
	Name VARCHAR(100) UNIQUE NOT NULL 
);
INSERT INTO Departments (Financing, Name) VALUES
  (150000.00, 'Department of Computer Science'),
  (120000.50, 'Department of Mathematics'),
  (80000.75, 'Department of Physics'),
  (90000.25, 'Department of Chemistry'),
  (110000.80, 'Department of Biology');
 
CREATE TABLE Faculties(
	Id SERIAL PRIMARY KEY,
	Dean VARCHAR(255) NOT NULL,
	Name VARCHAR(100) UNIQUE NOT NULL 
);
INSERT INTO Faculties (Dean, Name) VALUES
  ('John Smith', 'Faculty of Computer Science'),
  ('Jane Doe', 'Faculty of Mathematics'),
  ('Michael Johnson', 'Faculty of Physics'),
  ('Emma Davis', 'Faculty of Chemistry'),
  ('Robert Brown', 'Faculty of Biology');
  
CREATE TABLE Groups(
	Id SERIAL PRIMARY KEY,
	Name VARCHAR(100) UNIQUE NOT NULL,
	Rating INT NOT NULL CHECK(Rating BETWEEN 0 AND 5),
	Year INT NOT NULL CHECK (Year BETWEEN 1 AND 5)
);
INSERT INTO Groups (Name, Rating, Year) VALUES
  ('Group A', 4, 3),
  ('Group B', 3, 4),
  ('Group C', 5, 2),
  ('Group D', 2, 5),
  ('Group E', 1, 1);
  
CREATE TABLE Teachers(
	Id SERIAL PRIMARY KEY,
	EmploymentDate DATE NOT NULL CHECK (EmploymentDate > '1990-01-01'),
	IsAssistant BIT NOT NULL DEFAULT B'0',
	IsProfessor BIT NOT NULL DEFAULT B'0',
	Position VARCHAR(255) NOT NULL,
	Premium DECIMAL(10,2) NOT NULL DEFAULT 0 CHECK (Premium > 0),
	Name VARCHAR(255) NOT NULL,
	Salary DECIMAL(10,2) NOT NULL CHECK (Salary > 0),
	Surname VARCHAR(255) NOT NULL
);
INSERT INTO Teachers (EmploymentDate, IsAssistant, IsProfessor, Position, Premium, Name, Salary, Surname) VALUES
  ('2000-05-15', B'1', B'0', 'Assistant Professor', 2000.00, 'John', 50000.00, 'Doe'),
  ('1995-08-20', B'0', B'1', 'Professor', 3000.50, 'Jane', 70000.00, 'Smith'),
  ('2008-03-10', B'1', B'0', 'Assistant Professor', 1500.75, 'Michael', 45000.00, 'Johnson'),
  ('1992-11-05', B'0', B'1', 'Professor', 2500.25, 'Emma', 60000.00, 'Davis'),
  ('2015-06-25', B'1', B'0', 'Assistant Professor', 1800.80, 'Robert', 48000.00, 'Brown');
