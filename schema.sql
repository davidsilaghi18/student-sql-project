-- Create the students table
CREATE TABLE students (
  student_id SERIAL PRIMARY KEY,       -- Unique ID for each student
  name VARCHAR(50) NOT NULL,           -- Student's name (required)
  age INT,                             -- Student's age (optional)
  major VARCHAR(50)                    -- Student's major/specialization
);

-- Create the grades table
CREATE TABLE grades (
  grade_id SERIAL PRIMARY KEY,         -- Unique ID for each grade entry
  student_id INT REFERENCES students(student_id),  -- Foreign key linked to students
  subject VARCHAR(50),                 -- Subject name
  grade INT                            -- Numeric grade (e.g. 85, 90)
);
