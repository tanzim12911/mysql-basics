-- @block
CREATE TABLE Users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255) UNIQUE,
    bio TEXT,
    country VARCHAR(2)
);

-- @block
INSERT INTO Users(email, bio, country)
VALUES (
    'hello@world.com',
    'i love strangers!',
    'US'
);

-- @block
INSERT INTO Users(email, bio, country)
VALUES 
    ('hlw@world.com', 'foo', 'US'),
    ('hola@munda.com', 'bar', 'MX'),
    ('bonjour@monde.com', 'baz', 'FR');

-- @block
SELECT email, id FROM users

WHERE country = 'US'
AND email LIKE 'h%'

ORDER BY id DESC
LIMIT 2;

-- @block
CREATE INDEX email_index ON Users(email);

-- @block
CREATE TABLE Rooms(
    id INT AUTO_INCREMENT,
    street VARCHAR(255),
    
)