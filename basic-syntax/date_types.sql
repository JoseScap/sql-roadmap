-- Drop the table 'data_types' if it exists to avoid conflicts.
DROP TABLE IF EXISTS data_types;

-- Create a new table 'data_types' with various fields including age, money, document type, first name, last name, full name, birthday date, birthday datetime, and has job.
CREATE TABLE data_types(
    id INTEGER PRIMARY KEY AUTOINCREMENT, -- Define an auto-incrementing primary key 'id'.
    edad INTEGER CHECK(edad >= 0 AND edad <= 150), -- Define a field 'edad' for age with a check constraint to ensure it's between 0 and 150.
    money NUMERIC(10) CHECK(money >= 0 AND money <= 10000000), -- Define a field 'money' for monetary value with a check constraint.
    document_type CHAR(3), -- Define a field 'document_type' for document type with a maximum length of 3 characters.
    first_name TEXT, -- Define a field 'first_name' for first name.
    last_name TEXT, -- Define a field 'last_name' for last name.
    full_name TEXT GENERATED ALWAYS AS (first_name || ' ' || last_name) STORED, -- Define a field 'full_name' as a concatenation of first name and last name.
    birthday_date DATE, -- Define a field 'birthday_date' for birthday date.
    birthday_datetime DATETIME, -- Define a field 'birthday_datetime' for birthday date and time.
    has_job BOOLEAN -- Define a field 'has_job' for indicating if the person has a job (true/false).
);

-- Insert three records into the 'data_types' table with various values for each field.
INSERT INTO data_types (edad, money, document_type, first_name, last_name, birthday_date, birthday_datetime, has_job) 
VALUES (25, 5000.50, 'DNI', 'John', 'Doe', '1999-05-15', '1999-05-15 12:00:00', TRUE); -- Inserting a record for John Doe with a job.
INSERT INTO data_types (edad, money, document_type, first_name, last_name, birthday_date, birthday_datetime, has_job) 
VALUES (30, 7500000.75, 'PSP', 'Jane', 'Smith', '1990-10-20', '1990-10-20 08:30:00', FALSE); -- Inserting a record for Jane Smith without a job.
INSERT INTO data_types (edad, money, document_type, first_name, last_name, birthday_date, birthday_datetime, has_job) 
VALUES (40, 10000000, 'DNI', 'Michael', 'Johnson', '1980-03-25', '1980-03-25 18:45:00', TRUE); -- Inserting a record for Michael Johnson with a job.

-- Drop the 'data_types' table.
DROP TABLE data_types;
