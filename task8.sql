CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    email VARCHAR(100)
);

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

DELIMITER $$

CREATE PROCEDURE GetUsersByAge(IN inputAge INT)
BEGIN
    SELECT * FROM users
    WHERE age = inputAge;
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

SELECT CountUsersByAge(21);




