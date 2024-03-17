-- Drop the table 'users' if it exists to avoid conflicts.
DROP TABLE IF EXISTS users;

-- Drop the table 'fake_table' if it exists to avoid conflicts.
DROP TABLE IF EXISTS fake_table;

-- Drop the table 'old_users' if it exists to avoid conflicts.
DROP TABLE IF EXISTS old_users;

-- Create a new table 'fake_table' with columns 'fake_id', 'data_1', and 'data_2'.
CREATE TABLE fake_table (
    fake_id INTEGER PRIMARY KEY AUTOINCREMENT,
    data_1 TEXT NOT NULL,
    data_2 TEXT NOT NULL
);

-- Rename the 'fake_table' to 'users'.
ALTER TABLE fake_table RENAME TO users;

-- Remove the columns 'data_1' and 'data_2' from the 'users' table.
ALTER TABLE users DROP COLUMN data_1;
ALTER TABLE users DROP COLUMN data_2;

-- Add a new column 'username' to the 'users' table.
ALTER TABLE users ADD COLUMN username TEXT NOT NULL;

-- Insert a record into the 'users' table with the username 'Josescap'.
INSERT INTO users(username) VALUES('Josescap');

-- Rename the 'users' table to 'old_users'.
ALTER TABLE users RENAME TO old_users;

-- Create a new 'users' table with a primary key 'id' and a column 'user_name' with length constraints.
CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_name TEXT CHECK(length(user_name) >= 8 AND length(user_name) <= 20) NOT NULL
);

-- Copy data from the 'username' column in the 'old_users' table to the 'user_name' column in the 'users' table.
INSERT INTO users(user_name) SELECT username FROM old_users;

-- Drop the 'old_users' table after transferring data to the new 'users' table.
DROP TABLE old_users;

-- Add a new column 'pass' to the 'users' table with length constraints and a default value.
ALTER TABLE users ADD COLUMN pass TEXT NOT NULL DEFAULT('INITIAL_PASSWORD') CHECK (length(pass) >= 10 AND length(pass) <= 32);

-- Update the 'pass' column to a custom password for the user with the username 'Josescap'.
UPDATE users SET pass='CustomPassword' WHERE user_name='Josescap';

-- Add a new column 'password' to the 'users' table with length constraints and a default value.
ALTER TABLE users ADD COLUMN password TEXT NOT NULL DEFAULT('INITIAL_PASSWORD') CHECK (length(password) >= 10 AND length(password) <= 32);

-- Copy data from the 'pass' column to the new 'password' column.
UPDATE users SET password=pass;

-- Remove the 'pass' column from the 'users' table.
ALTER TABLE users DROP COLUMN pass;

-- Drop the 'users' table.
DROP TABLE users;
