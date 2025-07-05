# 🐬 MySQL Stored Procedures & Functions Demo

This project is a beginner-friendly MySQL demo showing how to use stored procedures and functions with a basic `users` table.

## 📁 Table Structure

**users**
| Column | Type         | Description           |
|--------|--------------|-----------------------|
| id     | INT          | Primary Key (auto)    |
| name   | VARCHAR(100) | User's name           |
| age    | INT          | User's age            |
| email  | VARCHAR(100) | User's email address  |

## 📦 Features

- ✅ Stored Procedure: `GetUsersByAge(age)`
- ✅ Function: `CountUsersByAge(age)`
- ✅ Sample data included

## 📸 Screenshots


### 📥 Sample Data Inserted
![Sample Data](https://github.com/9A-Ayush/sql-task8/blob/main/ss/1.png)

---

### 💻 Calling Stored Procedure
![Procedure Call](https://github.com/9A-Ayush/sql-task8/blob/main/ss/2.png)

---

### 📊 Function Output
![Function Usage](https://github.com/9A-Ayush/sql-task8/blob/main/ss/3.png)


## 🔄 Stored Procedure

```sql
DELIMITER $$

CREATE PROCEDURE GetUsersByAge(IN inputAge INT)
BEGIN
    SELECT * FROM users WHERE age = inputAge;
END $$

DELIMITER ;

CALL GetUsersByAge(21);

DELIMITER $$

CREATE FUNCTION CountUsersByAge(inputAge INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total FROM users WHERE age = inputAge;
    RETURN total;
END $$
DELIMITER ;

SELECT CountUsersByAge(23);


INSERT INTO users (name, age, email) VALUES
('Ayush', 21, 'ayush@email.com'),
('Simran', 23, 'simran@email.com'),
('Raj', 21, 'raj@email.com'),
('Priya', 25, 'priya@email.com'),
('Kabir', 22, 'kabir@email.com'),
('Sneha', 23, 'sneha@email.com'),
('Dev', 21, 'dev@email.com'),
('Ananya', 25, 'ananya@email.com'),
('Rohan', 24, 'rohan@email.com'),
('Megha', 22, 'megha@email.com');









🧠 Learnings
Create and call stored procedures

Build and use SQL functions

Understand SQL code reusability

💌 Made with ❤️ by Ayush





